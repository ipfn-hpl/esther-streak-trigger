/**
 * PCIe Vivado Project General
 * Project Name:
 * Design Name:
 * FW Version
 * working  with kernel 4.xx
 *
 *
 * Copyright 2014 - 2019 IPFN-Instituto Superior Tecnico, Portugal
 * Creation Date  2019-07-26
 *
 * Licensed under the EUPL, Version 1.1 or - as soon they
 * will be approved by the European Commission - subsequent
 * versions of the EUPL (the "Licence");
 * You may not use this work except in compliance with the
 * Licence.
 * You may obtain a copy of the Licence at:
 *
 * http://ec.europa.eu/idabc/eupl
 *
 * Unless required by applicable law or agreed to in
 * writing, software distributed under the Licence is
 * distributed on an "AS IS" basis,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 * express or implied.
 * See the Licence for the specific language governing
 * permissions and limitations under the Licence.
 *
 */
// For CPU_ZERO
#define _GNU_SOURCE

#include <errno.h>
#include <sched.h>
#include <stdio.h>

#include <fcntl.h>
#include <sys/ioctl.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>

#include "atca-v2-pcie.h"

int bind_to_cpu(int core_id) {
  // cpu_set_t: This data set is a bitset where each bit represents a CPU.
  cpu_set_t cpuset;
  const pthread_t pid = pthread_self();

  // CPU_ZERO: This macro initializes the CPU set set to be the empty set.
  CPU_ZERO(&cpuset);
  // CPU_SET: This macro adds cpu to the CPU set set.
  CPU_SET(core_id, &cpuset);

  // pthread_setaffinity_np: The pthread_setaffinity_np() function sets the CPU
  // affinity mask of the thread thread to the CPU set pointed to by cpuset. If
  // the call is successful, and the thread is not currently running on one of
  // the CPUs in cpuset, then it is migrated to one of those CPUs.
  const int set_result =
      pthread_setaffinity_np(pid, sizeof(cpu_set_t), &cpuset);
  if (set_result != 0) {
    // errno = en;
    perror("pthread_setaffinity_np");
    return set_result;
    /*print_error_then_terminate(set_result, "pthread_setaffinity_np");*/
  }
  // Check what is the actual affinity mask that was assigned to the thread.
  // pthread_getaffinity_np: The pthread_getaffinity_np() function returns the
  // CPU affinity mask of the thread thread in the buffer pointed to by cpuset.
  const int get_affinity =
      pthread_getaffinity_np(pid, sizeof(cpu_set_t), &cpuset);
  if (get_affinity != 0) {

    perror("pthread_getaffinity_np");
    return get_affinity;
    /*print_error_then_terminate(get_affinity, "pthread_getaffinity_np");*/
  }
  if (CPU_ISSET(core_id, &cpuset))
    printf("pid %ld, running on core %d\n", pid, core_id);
  return 0;
}
int atca_mimo_v2_stop_acq(int fd) {
  int max_buf_count = ioctl(fd, ATCA_PCIE_IOCT_ACQ_DISABLE);
  /*int rc = */
  ioctl(fd, ATCA_PCIE_IOCT_STREAM_DISABLE);
  // PDEBUG("ACQ Stopped, FPGA  Status: 0x%.8X, max buff_count: %d \n", tmp,
  // max_buf_count);
  return max_buf_count;
}
/*unsigned long int time_interval_us(tstart, tend) struct timespec *tstart,
 * *tend;*/
unsigned long int time_interval_us(struct timeval *tstart,
                                   struct timeval *tend) {
  unsigned long int duration = 1000000UL * (tend->tv_sec - tstart->tv_sec) +
                               (unsigned long)tend->tv_usec -
                               (unsigned long)tstart->tv_usec;
  return duration;
}

void get_rt_pckt_adc_data(int32_t *pAdcData, DMACH1_PCKT *pPdma) {
  for (int j = 0; j < ADC_CHANNELS; j++)
    *pAdcData++ = pPdma->adc_decim_data.channel[j].adc_data;
}

void get_pckt_adc_data(int32_t *pAdcData, DMA_PCKT *pPdma) {
  /*Normal samples*/
  for (int i = 0; i < PCK_N_SAMPLES; i++) {
    for (int j = 0; j < ADC_CHANNELS; j++)
      *pAdcData++ = pPdma->samp[i].channel[j].adc_data;
  }
}
unsigned int get_pckt_head_magic(DMA_PCKT *pPdma) {
  unsigned int uval = 0;
  for (int i = 0; i < 4; i++) {
    uval |= pPdma->samp[0].channel[i].data_byte << (i * 8);
  }
  return uval;
}
unsigned int get_pckt_foot_magic(DMA_PCKT *pPdma) {
  unsigned int uval = 0;
  for (int i = 0; i < 4; i++) {
    uval |= (pPdma->samp[PCK_N_SAMPLES - 1].channel[i].data_byte) << (i * 8);
  }
  return uval;
}
uint64_t get_sample_cnt(SAMPLE *pSamp) {
  uint64_t uval = 0;
  for (int i = 0; i < 8; i++) {
    uval |= (pSamp->channel[8 + i].data_byte) << (i * 8);
  }
  return uval;
}
/*void get_pckt_adc_data(int32_t *pAdcData, DMA_PCKT *pPdma) {*/
/*int j, sdata;*/
/*unsigned int udata20bit, uval;*/
/*struct {*/
/*signed int x : 20;*/
/*} s; // structure for sign extend*/
/*[>Packet Header <]*/
/*[>*pAdcData++ = pPdma->hsamp.time_cnt;<]*/
/*udata20bit = pPdma->hsamp.channel[0].data_byte;*/
/*udata20bit |= pPdma->hsamp.channel[1].data_byte << 8;*/
/*udata20bit |= pPdma->hsamp.channel[2].data_byte << 16;*/
/*sdata = s.x = udata20bit;*/
/**pAdcData++ = sdata;*/
/*udata20bit = pPdma->hsamp.channel[3].data_byte;*/
/*udata20bit |= pPdma->hsamp.channel[4].data_byte << 8;*/
/*udata20bit |= pPdma->hsamp.channel[5].data_byte << 16;*/
/*sdata = s.x = udata20bit;*/
/**pAdcData++ = sdata;*/
/*udata20bit = pPdma->hsamp.channel[6].data_byte;*/
/*udata20bit |= pPdma->hsamp.channel[7].data_byte << 8;*/
/*udata20bit |= pPdma->hsamp.channel[8].data_byte << 16;*/
/*sdata = s.x = udata20bit;*/
/**pAdcData++ = sdata;*/
/*uval = pPdma->hsamp.channel[9].data_byte;*/
/*udata20bit = uval; // pPdma->hsamp.channel[9].data_byte;*/
/*udata20bit |= pPdma->hsamp.channel[10].data_byte << 8;*/
/*udata20bit |= pPdma->hsamp.channel[11].data_byte << 16;*/
/*sdata = s.x = udata20bit;*/
/**pAdcData++ = sdata;*/
/*[>*pAdcData++ = pPdma->hsamp.header.buf_num;<]*/
/*[>for (j = 2; j < 4; j++)<]*/
/*[>*pAdcData++ = 0;<]*/
/*for (j = 0; j < ADC_CHANNELS - 4; j++)*/
/**pAdcData++ = pPdma->hsamp.channel[j].adc_data;*/

/*[>Normal samples<]*/
/*for (int i = 0; i < PCK_N_SAMPLES - 2; i++) {*/
/*/**/
/*udata20bit |= pdma[buf_num].samp[i].channel[4].data_byte;*/
/*udata20bit |= pdma[buf_num].samp[i].channel[5].data_byte << 8;*/
/*udata20bit |= pdma[buf_num].samp[i].channel[6].data_byte << 16;*/
/*udata20bit |= pdma[buf_num].samp[i].channel[7].data_byte << 24;*/
/**pAdcData++ = udata20bit;*/
/*for (j = 0; j < ADC_CHANNELS; j++)*/
/**pAdcData++ = pPdma->samp[i].channel[j].adc_data;*/
/*}*/

/*[>Packet Footer <]*/
/*for (j = 0; j < ADC_CHANNELS - 4; j++)*/
/**pAdcData++ = pPdma->fsamp.channel[j].adc_data;*/

/*udata20bit = pPdma->fsamp.channel[16].data_byte;*/
/*udata20bit |= pPdma->fsamp.channel[17].data_byte << 8;*/
/*udata20bit |= pPdma->fsamp.channel[18].data_byte << 16;*/
/**pAdcData++ = s.x = udata20bit;*/
/*udata20bit = pPdma->fsamp.channel[19].data_byte;*/
/*udata20bit |= pPdma->fsamp.channel[20].data_byte << 8;*/
/*udata20bit |= pPdma->fsamp.channel[21].data_byte << 16;*/
/**pAdcData++ = s.x = udata20bit; // sdata;*/
/*udata20bit = pPdma->fsamp.channel[22].data_byte;*/
/*udata20bit |= pPdma->fsamp.channel[23].data_byte << 8;*/
/*udata20bit |= pPdma->fsamp.channel[24].data_byte << 16;*/
/**pAdcData++ = s.x = udata20bit;*/
/*udata20bit = pPdma->fsamp.channel[25].data_byte;*/
/*udata20bit |= pPdma->fsamp.channel[26].data_byte << 8;*/
/*udata20bit |= pPdma->fsamp.channel[27].data_byte << 16;*/
/**pAdcData++ = s.x = udata20bit;*/
/**/
/*uval = pPdma->fsamp.channel[25].data_byte;*/
/*udata20bit = uval; // pPdma->hsamp.channel[9].data_byte;*/
/*printf("uval 0x%X ", uval);*/
/*udata20bit = pPdma->fsamp.channel[9].data_byte;*/
/*uval = pPdma->fsamp.channel[26].data_byte << 8;*/
/*udata20bit |= uval; // pPdma->fsamp.channel[10].data_byte << 8;*/
/*printf(" 0x%X ", uval);*/
/*uval = pPdma->fsamp.channel[27].data_byte << 16;*/
/*udata20bit |= uval; // pPdma->fsamp.channel[11].data_byte << 16;*/
/*printf(" 0x%X ", uval);*/
/*sdata = s.x = udata20bit;*/
/*printf("sdata 0x%X\n", sdata);*/
/**pAdcData++ = sdata;*/
/**/
/*for (j = 0; j < 2; j++)
 *pAdcData++ = 0;
 *pAdcData++ = pPdma->fsamp.time_cnt;
 *pAdcData++ = pPdma->fsamp.footer.buf_num;
 */
/*return;*/
/*}*/
