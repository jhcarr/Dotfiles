# Dotfiles
A collection of my personal dotfiles for use in development environments.

## Setup
The configuration specified in this project may be deployed automatically using the Makefile provided in the Setup folder.

Use `make check` to compare local dotfiles with project dotfiles.

Use `make link` to perform `make check` and link project dotfiles to the user's home directory. This will also backup any files with name collisions to the directory "~/backupDotfiles/ < current-date-and-time > /".

### Setup Requirements
- [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)