#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
KD=`pwd`
MODDIR=${2:-4.14.69}
DIR=${1:-rootfs}
echo "module directory $MODDIR"
echo "install location /mnt/$DIR"
cd /mnt/$DIR/boot
DATE=$(date +"%d%m%Y")
N=1
# Increment $N as long as a directory with that name exists
while [[ -d "./$DATE-$N" ]] ; do
    N=$(($N+1))
done
sudo mkdir "./$DATE-$N"
sudo cp Image "./$DATE-$N"
sudo cp armada-3720-espressobin.dtb "./$DATE-$N"
cd $KD/arch/arm64/boot
sudo cp Image /mnt/$DIR/boot
sudo cp ./dts/marvell/armada-3720-espressobin.dtb /mnt/$DIR/boot
cd /mnt/$DIR/lib/modules
if [ -d "$MODDIR" ]; then
  echo
  DATE=$(date +"%d%m%Y")
  N=1
  # Increment $N as long as a directory with that name exists
  while [[ -d "./$DATE-$N" ]] ; do
      N=$(($N+1))
  done
  sudo mkdir "./$DATE-$N"
  sudo mv "./$MODDIR"  "./$DATE-$N"
fi
cd $KD
sudo make ARCH=arm64 modules_install INSTALL_MOD_PATH=/mnt/$DIR/
