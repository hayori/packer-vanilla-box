#!/bin/sh

if [[ $PACKER_BUILDER_TYPE =~ parallels ]]; then
  mount -t iso9660 -o loop -o ro /home/vagrant/prl-tools-lin.iso /mnt
  sh /mnt/install --install-unattended-with-deps
  umount /mnt
fi

