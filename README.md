# doom64dc_updater in Linux Bashfor WSL
A Linux Bash .sh automation to run via Windows Subsystem Linux for update my local files and compile the latest build of Doom 64 DC Port from the author [repo](https://github.com/jnmartin84/doom64-dc/).

# Dependencies

[- KOS Toolchain](https://github.com/DarthMotzkus/doom64dc_updater/blob/main/toolchain_setup.md)

[- mkdcdisc app](https://github.com/DarthMotzkus/doom64dc_updater/blob/main/mkdcdisc_setup.md)

# Instructions

This assume you already build the project once, and works only as UPDATER to the latest release. Althoug... Here's a quick resumed guide.

- Setup all dependencies from above first.
- Remember to clone the [repo](https://github.com/jnmartin84/doom64-dc/) first and choose the branch of your likeness. It needs to be a branch with the KOS package provided by the author, or this program will not run properlly.
- You need to put your doom64.wad file from NightDive PC Port and your doom64.z64 rom file from N64 on the __wadtools__ repo folder. More info about that in the original [repo](https://github.com/jnmartin84/doom64-dc/).
- Open the doom64.sh script file on an editor and change the pertinent paths of the doom64-dc repo and mkdcdisc repo from your local folders.
- Run the doom64.sh via Bash.
- When done the program will open the folder with the doom64.cdi builded on it.
