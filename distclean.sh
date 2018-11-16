#!/bin/bash
export ARCH=arm64
export CROSS_COMPILE=aarch64-linux-gnu-
export PATH=$PATH:/mnt/AllData/hacking/toolchain/gcc-linaro-5.2-2015.11-2-x86_64_aarch64-linux-gnu/bin
# run this if you get silentoldconfig error
# make sure that there are no needed files without correct permission
# this can cause the slientoldconfig error.
make distclean
