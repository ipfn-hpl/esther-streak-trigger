/**
 * PCIe Vivado Project General  Test DMA
 * Project Name:
 * Design Name:
 * FW Version
 * working  with kernel 4.xx
 *
 *
 * Copyright 2014 - 2019 IPFN-Instituto Superior Tecnico, Portugal
 * Creation Date  2019-05-10
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
/*#define _GNU_SOURCE*/

#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/time.h>
#include <time.h>
#include <unistd.h>
//#include <sys/types.h>
//#include <sys/stat.h>
#include <fcntl.h>
/*#include <pthread.h>*/
/*#include <sched.h>*/
#include <sys/ioctl.h>
//#include <linux/types.h>
/*#include <math.h>*/
//#include <signal.h>
#include "atca-v2-pcie-ioctl.h"
#include <signal.h>
#include <string.h>

char DEVNAME[] = "/dev/atca_v2_0";
/*
void get_data(int32_t *pAdcDataWr, void *dmaBuff) {
  DMA_PCKT *pdma = (DMA_PCKT *)dmaBuff;
  for (int s = 0; s < PCK_N_SAMPLES; s++) {
    for (int j = 0; j < ADC_CHANNELS; j++)
      *pAdcDataWr++ = pdma->samp[s].channel[j].adc_data;
  }
}
*/
int main(int argc, char **argv) {

  int i, rc, fd;
  char *devn;
  int flags = 0;
  // for data
  /*uint64_t lastfooter = 0;*/

  if (argc > 1)
    devn = argv[1];
  else
    devn = DEVNAME;

  flags |= O_RDONLY;
  printf("opening device\t");
  extern int errno;
  fd = open(devn, flags);
  rc = ioctl(fd, ATCA_PCIE_IOCT_ACQ_DISABLE);
  close(fd);
  return 0;
}
