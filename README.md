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
