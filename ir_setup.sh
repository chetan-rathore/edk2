#!/bin/bash

git submodule update --init
git fetch
git branch ir_branch
git clone https://github.com/tianocore/edk2-libc
cd edk2-libc
git checkout 61687168fe02ac4d933a36c9145fdd242ac424d1
cd ..
git clone git@github.com:chetan-rathore/sbsa-acs.git ShellPkg/Application/sbsa-acs

