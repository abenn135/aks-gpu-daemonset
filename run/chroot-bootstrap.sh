#! /bin/bash

set -e
set -x
set -o pipefail

cp ./node-init.sh /hostfs/root/node-init.sh
chmod +x /hostfs/root/node-init.sh
/usr/sbin/chroot "/hostfs" /root/node-init.sh
