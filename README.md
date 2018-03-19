# Windows 10 dotfiles

## Introduction

> Dotfiles for my Windows development environment. Mainly for Unreal Engine 4 C++ development.

## Features

* Vim
* Visual Studio

## Installation

> Clone the repo in your home folder (`C:\Users\[USERNAME]`).
### Vim
* First install Vim for Windows (Graphical and Shell Mode). Download from [releases](https://github.com/vim/vim-win32-installer/releases).
* Verify and tweak the (default) installation paths in `dotfiles.bat`
* Run `dotfiles.bat`as an Administrator. Configuration files will be copied to home folder. `Tomorrow-Night` theme will be installed in `color` folder. `plug.vim` is copied to Vim's `autoload` folder for plugin management. `utils.vim` contains vim utilities and is also copied to Vim's `autoload` folder. The main configuration file is `_vimrc`, which includes `plugins.vim` file with plugin declarations, and  `_vsvimrc` which contains core configurations (no plugins) to be used from Visual Studio also.

### Visual Studio
The `vs` folder contains exported settings for Visual Studio.
I have installed [VsVim](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim)  Extension to use Vim as an editor inside Visual Studio. Visual Studio will read `_vsvimrc` in home folder, which contains core configurations and vim mappings of Visual Studio commands. The only Visual Studio configuration needed in `Tools\Options\VsVim\General` is to choose `vsvimrc files only` for `VimRc File Loading`
