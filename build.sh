#!/bin/bash
ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-  PATH=$PATH:/mnt/AllData/hacking/toolchain/gcc-linaro-5.2-2015.11-2-x86_64_aarch64-linux-gnu/bin make -j4 Image dtbs modules
