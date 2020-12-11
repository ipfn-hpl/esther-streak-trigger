#include <ctype.h>
#include <errno.h>
#include <fcntl.h>  /* open*/
#include <stdio.h>  /* for printf */
#include <stdlib.h> /* for exit */
#include <string.h> /* strerror*/
#include <sys/ioctl.h>
#include <sys/stat.h>
#include <sys/types.h>
//#include <time.h>
#include "atca-v2-pcie-ioctl.h"
#include "atca-v2-pcie-lib.h"
#include <unistd.h> /* for getopt */

char DEVNAME[] = "/dev/atca_v2_0";
int Run = 1;

int main(int argc, char **argv) {
  int savedata = 1;
  int npackets = 10;
  int bflag = 0;
  char *cvalue = NULL;
  char *devn = DEVNAME;
  int index;
  int rc, fd, pkt, c;
  unsigned int magic, fmagic;
  uint64_t header, footer;
  int64_t lastheader = 0;
  int32_t dmaSize, saveSize;
  void *dmaBuff;
  DMA_PCKT *pPckt; //, *pdma1;
  struct atca_eo_config eo_offs;
  struct timeval start_time, end_time;

  opterr = 0;

  while ((c = getopt(argc, argv, "tn:d:hc:")) != -1)
    switch (c) {
    case 't':
      savedata = 0;
      break;
    case 'b':
      bflag = 1;
      break;
    case 'n':
      cvalue = optarg;
      npackets = atoi(optarg);
      break;
    case 'd':
      devn = optarg;
      break;
    case 'h':
      printf("%s  [Npackets [nosave dev_name]]\n", argv[0]);
      exit(EXIT_FAILURE);
    case '?':
      if (optopt == 'c')
        fprintf(stderr, "Option -%c requires an argument.\n", optopt);
      else if (isprint(optopt))
        fprintf(stderr, "Unknown option `-%c'.\n", optopt);
      else
        fprintf(stderr, "Unknown option character `\\x%x'.\n", optopt);
      return 1;
    default:
      abort();
    }

  printf("savedata = %d, bflag = %d, cvalue = %s\n", savedata, bflag, cvalue);

  for (index = optind; index < argc; index++)
    printf("Non-option argument %s\n", argv[index]);

  fd = open(devn, O_RDONLY);
  if (fd < 0) {
    fprintf(stderr, "Error: cannot open device %s \n", devn);
    fprintf(stderr, " errno = %i\n", errno);
    printf("open error : %s\n", strerror(errno));
    exit(1);
  }
  printf("device %s opened \n", devn);
  rc = ioctl(fd, ATCA_PCIE_IOCT_DMA_DISABLE);
  rc = ioctl(fd, ATCA_PCIE_IOCT_ACQ_DISABLE);
  dmaSize = 0;
  rc = ioctl(fd, ATCA_PCIE_IOCG_DMA_SIZE, &dmaSize);
  saveSize = ADC_CHANNELS * PCK_N_SAMPLES * sizeof(int32_t);
  dmaBuff = malloc(dmaSize);
  pPckt = (DMA_PCKT *)dmaBuff;
  rc = ioctl(fd, ATCA_PCIE_IOCT_DMA_RESET);
  rc = ioctl(fd, ATCA_PCIE_IOCT_INT_ENABLE);

  printf("npackets %d, dmaSize: %d, saveSize: %d \n", npackets, dmaSize,
         saveSize); //
  for (int i = 0; i < ADC_CHANNELS; i++)
    eo_offs.offset[i] = 0;
  /*eo_offs.offset[0] = 1500;*/
  /*eo_offs.offset[1] = 1600;*/

  rc = ioctl(fd, ATCA_PCIE_IOCS_EO_OFFSETS, &eo_offs);

  rc = ioctl(fd, ATCA_PCIE_IOCT_ACQ_ENABLE);
  //// usleep(1);
  rc = ioctl(fd, ATCA_PCIE_IOCT_DMA_ENABLE);

  gettimeofday(&start_time, NULL);
  for (pkt = 0; (pkt < npackets) && Run; pkt++) {
    rc = read(fd, dmaBuff, dmaSize);          // loop read.
    header = get_sample_cnt(&pPckt->samp[0]); //.channel[8].data_byte;
    footer = pPckt->samp[PCK_N_SAMPLES - 1].channel[24].data_byte;
    magic = get_pckt_head_magic(pPckt);
    fmagic = get_pckt_foot_magic(pPckt);
    if (magic != 0x54310100) {
      printf("Err pckt magic: %d, header: 0x%lX, lastheader: 0x%lX, footer: "
             "0x%lX \n ",
             pkt, header, lastheader, footer);
      Run = 0;
    }
  }
  gettimeofday(&end_time, NULL);
  rc = ioctl(fd, ATCA_PCIE_IOCT_DMA_DISABLE);
  rc = ioctl(fd, ATCA_PCIE_IOCT_ACQ_DISABLE);
  close(fd);
  printf("max_buffer_count: %d,  %d Npackets in %ld microseconds\n", rc, pkt,
         time_interval_us(&start_time, &end_time));
  return 0;
}
