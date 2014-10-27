#!/bin/bash
#
# Reload the pci_skel driver
#

cd /daqfs/home/moffit/work/ctp/PCIe/driver/

if [ ! -e /dev/pci_skel ] ; then
    /bin/mknod /dev/pci_skel c 210 32
    /bin/chown root /dev/pci_skel
    /bin/chgrp users /dev/pci_skel
    /bin/chmod 666 /dev/pci_skel
fi

/sbin/rmmod pci_skel.ko
/sbin/insmod pci_skel.ko

