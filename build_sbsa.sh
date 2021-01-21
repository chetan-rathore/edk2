#!/bin/bash

unset WORKSPACE
unset PACKAGES_PATH
export GCC49_AARCH64_PREFIX=/home/cherat01/ATEG/tools/gcc-linaro-5.3-2016.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-
source edksetup.sh --reconfig
make -C BaseTools/Source/C
build -a AARCH64 -t GCC49 -p ShellPkg/ShellPkg.dsc -m ShellPkg/Applications/sbsa-acs/uefi_app/SbsaAvs.inf
