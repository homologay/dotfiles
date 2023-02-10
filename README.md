Some dotfiles and fish scripts to set up 
my development environment on a fresh 
void linux glibc x86_64 install. 

The best way to replicate my setup for
a particular application is to clone
the repo
```
git clone https://github.com/maxinebeckie/workflow
```
and then symlink the folder for the desired
application to your .config (eg. for alacritty)
```
ln -s /path/to/workflow/alacritty /home/your_username/.config/alacritty
```
This is what I prefer to do, so I can keep all
my dotfiles with the rest of my programming
projects. However, if you moved the cloned 
repo your config may break, so you may wish
to copy the config folder instead:
```
cp -r /path/to/workflow/fish /home/your_username/.config/fish
```

