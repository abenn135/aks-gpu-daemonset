#! /bin/bash

set -e
set -x
set -o pipefail

cp ./node-init.sh /hostfs/tmp/node-init.sh
/usr/sbin/chroot "/hostfs" /tmp/node-init.sh
