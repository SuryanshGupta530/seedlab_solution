#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
void main() {
  int fd;
  /* Assume that /etc/zzz is an important system file,
   * and it is owned by root with permission 0644.
   * Before running this program, you should creat
   * the file /etc/zzz first. */
  fd = open("/etc/zzz", O_RDWR | O_APPEND);
  if (fd == -1) {
    printf("Cannot open /etc/zzz\n");
    exit(0);
  }
  else printf("Open successfully\n");
}
