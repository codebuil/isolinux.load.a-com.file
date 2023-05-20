printf "\ec\e[44;30m\n"
dd if=/dev/zero of=out.img  bs=143k count=10
sudo mkfs.vfat -n '_' -S 512 -f 2 -F 12 out.img
sudo mkdir /mnt/new
chmod 777 out.img
sudo mount -t vfat -o loop out.img /mnt/new
sudo cp hello  /mnt/new
sudo umount /mnt/new
