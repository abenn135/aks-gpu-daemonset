#! /bin/bash

set -e
set -x
set -o pipefail

export PATH=$PATH:/usr/bin

add-apt-repository ppa:canonical-kernel-team/ppa
apt update
apt install linux-azure-nvidia
cat <<EOF | tee -a /etc/default/grub.d/60-azure-nvidia.cfg
GRUB_CMDLINE_LINUX="$GRUB_CMDLINE_LINUX console=tty1 console=ttyAMA0 earlycon=pl011,0xeffec000 initcall_blacklist=arm_pmu_acpi_init nvme_core.io_timeout=240 iommu.passthrough=1 irqchip.gicv3_nolpi=y nvidia.NVreg_NvLinkDisable=0 arm_smmu_v3.disable_msipolling=1"
EOF
update-grub
echo "blacklist nouveau " | tee -a /etc/modprobe.d/blacklist.conf
reboot
