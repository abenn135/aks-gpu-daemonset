#! /bin/bash

set -e
set -x
set -o pipefail

/usr/sbin/chroot "/hostfs" node-init.sh
