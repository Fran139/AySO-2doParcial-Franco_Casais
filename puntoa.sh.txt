sudo fdisk /dev/sda
sudo mkswap /dev/sda1
sudo swapon /dev/sda1
free -h
sudo fdisk /dev/sda
sudo fdisk -l
sudo pvcreate /dev/sda2 /dev/sda3 /dev/sda5 /dev/sda6
sudo pvs
sudo vgcreate vgAdmin /dev/sda2 /dev/sda3
sudo vgs
sudo vgcreate vgDevelopers /dev/sda5 /dev/sda6
sudo lvcreate -L 1G vgDevelopers -n lvDevelopers
sudo lvcreate -L 1G vgDevelopers -n lvTesters
sudo lvcreate -L .9G vgDevelopers -n lvDevops
sudo lvcreate -L 2G vgAdmin -n lvAdmin
sudo lvs
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevelopers
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvTesters
sudo mkfs.ext4 /dev/mapper/vgDevelopers-lvDevops
sudo mkfs.ext4 /dev/mapper/vgAdmin-lvAdmin
sudo mkdir /mnt/lvDevelopers
sudo mkdir /mnt/lvTesters
sudo mkdir /mnt/lvDevops
sudo mkdir /mnt/lvAdmin
sudo mount /dev/mapper/vgDevelopers-lvDevelopers /mnt/lvDevelopers
sudo mount /dev/mapper/vgDevelopers-lvTesters /mnt/lvTesters
sudo mount /dev/mapper/vgDevelopers-lvDevops /mnt/lvDevops
sudo mount /dev/mapper/vgAdmin-lvAdmin /mnt/lvAdmin
