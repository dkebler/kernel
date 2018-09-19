#!/bin/bash
#echo "CONFIG_ARM_ARMADA_37XX_CPUFREQ=y" >> .config
#echo "CONFIG_MTD_NAND_MARVELL=y" >> .config
echo "CONFIG_NET_DSA=y" >> .config
echo "CONFIG_MARVELL_10G_PHY=m" >> .config
echo "CONFIG_NET_DSA_MV88E6XXX=y" >> .config
echo "CONFIG_ARMADA_THERMAL=y" >> .config
echo "CONFIG_RTC_DRV_ARMADA38X=y" >> .config
echo "CONFIG_PHY_MVEBU_CP110_COMPHY=y" >> .config
