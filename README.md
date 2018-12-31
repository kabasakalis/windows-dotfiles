# Windows 10 dotfiles

## Introduction

> Dotfiles for my Windows development environment. For C++ development and Java.

###### Screenshot from Graphical Neovim (Qt) :
![Neovim screenshot](https://github.com/kabasakalis/winows-dotfiles/blob/master/screenshot.png)

## Features

* Neovim with Spacevim
* Vim (Graphical Vim)
* Neovim (Graphical Qt)
* Visual Studio
* Aliases
* Tools

## Installation

> Clone the repo in your home folder (`C:\Users\[USERNAME]`).
> Also clone ubuntu [dotfiles](https://github.com/kabasakalis/dotfiles) in home folder

### Vim
* Install Vim for Windows (Graphical and Shell Mode). Download from [releases](https://github.com/vim/vim-win32-installer/releases).
* Verify and tweak the (default) installation paths in `dotfiles.bat`

### Neovim
* Download From [Neovim releases]( https://github.com/neovim/neovim/releases/)
* Verify and tweak the (default) installation paths in `dotfiles.bat`

### SpaceVim
* Read about [Spacevim](https://github.com/SpaceVim/SpaceVim)
* The easiest way to install is to download [install.cmd](https://spacevim.org/install.cmd) and run it as administrator, or install SpaceVim manually.

### Visual Studio
The `vs` folder contains exported settings for Visual Studio.
I have installed [VsVim](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim)  Extension to use Vim as an editor inside Visual Studio. Visual Studio will read `_vsvimrc` in home folder, which contains core configurations and vim mappings of Visual Studio commands. The only Visual Studio configuration needed in `Tools\Options\VsVim\General` is to choose `vsvimrc files only` for `VimRc File Loading`

### Finally install windows dotfiles 
After making sure that all the programs you want to configure with dotfiles are installed,
and environmental variables in `dotfiles.bat` point to the right folders, 
you can run the `dotfiles.bat` as an Administrator. It's recommended to comment out 
configurations that you don't use with rems.
