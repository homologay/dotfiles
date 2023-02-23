Note: In progress. Not working. 

This repo contains:
  - dotfiles
  - a shell script to install rustc, then run..
  - .. the installer, written in rust, which installs
    some programs I like.

This is a somewhat minimal development setup.

## How 2 Use

Copy my alacritty or helix configs for cute colors. Or, to get all the stuff:

Install void linux. You'll want the x86_64, glibc, base version. This might work with the xfce version but
I'm not testing it with that. Then, run the following commands: 
```sh
git clone https://github.com/maxinebeckie/workflow
cd workflow
sh init.sh
```
The installer will prompt for some info that will help with some config (mostly git). Pressing enter will
skip.  