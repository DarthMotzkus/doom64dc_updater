# [KOS Toolchain Setup](https://dreamcast.wiki/Getting_Started_with_Dreamcast_development)

Setting up and compiling the toolchain with the dc-chain script

# Installing Dependencies

- For Debian/Ubuntu-based Linux
```
sudo apt-get update
sudo apt install gawk patch bzip2 tar make libgmp-dev libmpfr-dev libmpc-dev gettext wget libelf-dev texinfo bison flex sed git build-essential diffutils curl libjpeg-dev libpng-dev python3 pkg-config cmake libisofs-dev meson ninja-build rake
```
- For Fedora-based Linux
```
sudo dnf install gawk patch bzip2 tar make gmp-devel mpfr-devel libmpc-devel gettext wget elfutils-libelf-devel texinfo bison flex sed git diffutils curl libjpeg-turbo-devel libpng-devel gcc-c++ python3 rubygem-rake meson ninja-build
```
- For Arch-based Linux
```
sudo pacman -S --needed gawk patch bzip2 tar make gmp mpfr libmpc gettext wget libelf texinfo bison flex sed git diffutils curl libjpeg-turbo libpng python3 meson ruby-rake
```
- For Alpine-based Linux
```
sudo apk --update add build-base patch bash texinfo gmp-dev libjpeg-turbo-dev libpng-dev elfutils-dev curl wget python3 git ruby-rake
```
- Create the path where we'll install the toolchain and KOS, and grant it the proper permissions:
```
sudo mkdir -p /opt/toolchains/dc
sudo chmod -R 755 /opt/toolchains/dc
sudo chown -R $(id -u):$(id -g) /opt/toolchains/dc
```
# Cloning the KallistiOS git repository

- Next, clone the git repository for the latest 2.1.1 stable version of KallistiOS:
```
git clone https://github.com/KallistiOS/KallistiOS.git -b v2.1.x /opt/toolchains/dc/kos
```
- Alternatively, you may clone the latest unstable version, which contains the latest changes, but may also contain bugs or issues:
```
git clone https://github.com/KallistiOS/KallistiOS.git -b master /opt/toolchains/dc/kos
```
# Configuring the dc-chain script

- Enter the dc-chain directory:
```
cd /opt/toolchains/dc/kos/utils/dc-chain
```
- You may now configure the options to your liking by creating a Makefile.cfg file in this directory. Copy or rename the Makefile.default.cfg file to Makefile.cfg and then use a text editor to edit this file's settings to your liking. For example, you may like to alter the makejobs option to the number of threads available on your CPU to speed up the compilation. However, if you run into errors during compilation, you may want to set makejobs=1, as on some operating systems the toolchain may fail to build with a higher setting.

- We will leave the default stable profile for the toolchain, which currently uses GCC 13.2. For advanced users, other profiles are available to you; read the README.md file in the dc-chain directory for more information if you are interested. If you are unsure about options in the Makefile.cfg, just leave the defaults alone.

# Downloading and compiling the toolchain

- Now we will run a script to download files and compile the toolchain. At this point, we have the option of building both the main CPU SH4 compiler and the AICA sound processor ARM compiler, or we can skip the ARM compiler and just build the SH4 compiler. Thankfully, KallistiOS includes a prebuilt sound driver, so the ARM compiler is only necessary if you're wanting to make changes to the sound driver or write custom code to run on the sound processor. To build only the SH4 compiler:
```
make
```
- To build both the SH4 and the ARM compilers:
```
make all
```
- This will download and unpack the relevant necessary files and then begin the compilation process. The compilation can take anywhere from minutes to a few hours depending on your CPU and number of threads available. When successfully finished, the toolchains will be ready. If you used the commands above, the gdb debugger will have been built as well.

# Cleaning up temporary files

- After building everything, you can clean up the extraneous files in your dc-chain directory by entering:
```
make clean
```
