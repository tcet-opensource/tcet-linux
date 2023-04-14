umount /dev/sdb*
umount /dev/sdb*

sudo mkfs.ext4 /dev/sdb

sudo dd if=out/tcetlinux-$(date +%Y.%m.%d).iso of=/dev/sdb status=progress bs-2048