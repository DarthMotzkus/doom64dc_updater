# [MKDCDISC Setup](https://gitlab.com/simulant/mkdcdisc)

Setting up and compiling the MKDCDISC app from simulant git.

# Install the Dependencies

- A C++ Compiler
- git
- meson
- libisofs

__Fedora:__ ```dnf install git meson gcc gcc-c++ libisofs-devel```

__Ubuntu:__ ```sudo apt install git meson build-essential pkg-config libisofs-dev```

__MacOS:__ ```brew install git meson pkg-config libisofs```

# Download and Build

- Clone source (remember the repo path so you can use later to export $PATH in Doom 64 DC Updater)
```
git clone https://gitlab.com/simulant/mkdcdisc
cd mkdcdisc
```
```
meson setup builddir
meson compile -C builddir
```
- Run
```
./builddir/mkdcdisc -h
```
