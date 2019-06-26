# Joe's Dotfiles and Arch Bootstrap
### Install Dotfiles
Use the install.sh file to install. Caution:
* Will destroy current dotfiles from the included programs list.
* Must **not** be run with root priviledges.

### Current Dotfiles
These are the current programs supported by my dotfiles:
* NeoVim
* i3 (Window Manager)
* zsh and oh-my-zsh
* polybar

### Updating Dotfiles
In order to update the dotfiles, edit the files in the git-managed folders. The 'files' in the .config folder are, in fact, Symlinks to the git-managed files.

## **!!! (Caution) Package Bootstrapper !!!**
Please, don't expect this to work! I am almost certain that this will fail 100% of the time, because I only know it should work in theory. I haven't gotten a totally successful test yet, but even when I do, there is probably no way that it would work in any other case.

### !!! Installing !!!
Run the `./packages-arch.sh` file, **not** with root. This only works as a non-root user.
Ensure that you choose the `polybar` package, not the `polybar-git` package. Do similarly for `vim-plug`, not `vim-plug-git`.
