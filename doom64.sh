#!/bin/bash

#Show commands when running
set -x

#clean folders, git pull the branch and make the project (it need KOS Toolchain already builded)
cd /opt/toolchains/dc/
rm -rf ./kos
cd /home/richard/doom64-dc
rm -rf doom64.cdi
git pull
tar xzf doom64_kos.tgz
cd ./doom64_kos
cp -r kos /opt/toolchains/dc/
cd ..
rm -rf ./doom64_kos
cd
cd /opt/toolchains/dc/kos
source ./environ.sh
make clean
make
cd
cd /home/richard/doom64-dc
source /opt/toolchains/dc/kos/environ.sh
make clean
make

#make .cdi for GDEMU (it need mkdcdisc installed)
export PATH=$PATH:/home/richard/mkdcdisc/builddir
make cdi
echo "Done!"
explorer.exe .
read -p "Press [Enter] to Finish..."
