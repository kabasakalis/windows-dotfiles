# Windows 10 dotfiles

## Introduction

> Dotfiles for my Windows development environment. For C++ development and Java.
## LSP language support for Neovim.
IDE features with [coc.vim](https://github.com/neoclide/coc.nvim)
        
###### Screenshot from Graphical Neovim (Qt) with Spacevim and deep-space color theme :
![Neovim screenshot](https://raw.githubusercontent.com/kabasakalis/windows-dotfiles/master/screenshot.png)

## Features

* Neovim with Spacevim
* Vim (Graphical Vim)
* Neovim (Graphical Qt)
* Visual Studio
* Aliases
* Tools

## Installation

> Clone the repo in your home folder (`C:\Users\[USERNAME]`).
> Also clone ubuntu [dotfiles](https://github.com/kabasakalis/dotfiles) in home folder. Both are needed because
some dotfiles are the same for both windows and linux.

### Vim
* Install Vim for Windows (Graphical and Shell Mode). Download from [releases](https://github.com/vim/vim-win32-installer/releases).
* Verify and tweak the (default) installation paths in `dotfiles.bat`

### Neovim
* Download and install from [Neovim releases]( https://github.com/neovim/neovim/releases/)
* Install python 2 and 3 in your system from python [downloads](https://www.python.org/downloads/windows/),
 and set the paths accordingly either in `dotfiles/neovim/init.vim` if you use neovim without spacevim,
 or in `dotfiles/spacevim/autoload/config_before.vim` if you use it with spacevim. Also add to system path: executable for python3 only, and 
both `pip2` and `pip3` executables.
* Install [nodejs](https://nodejs.org/en/download/) and [yarn](https://yarnpkg.com/lang/en/docs/install/#windows-stable) 
* Install `coc-vim` extensions for language support with Language Server Protocol. In neovim command line,
install extensions for languages of interest. Example: `:CocInstall coc-java`, for java. See [coc.vim](https://github.com/neoclide/coc.nvim)
for details. See `dotfiles/spacevim/plugin/coc.vim` for details on how to update coc.vim.
* Run `checkhealth` in neovim command line to ensure that requirements are met, and follow suggestions to fix problems.
* Take other necessary actions that I may have missed to document here and ensure proper installation.
* Verify and tweak the (default) installation paths in `dotfiles.bat`

### SpaceVim
* Read about [Spacevim](https://github.com/SpaceVim/SpaceVim)
* The easiest way to install is to download [install.cmd](https://spacevim.org/install.cmd) and run it as administrator, or install SpaceVim manually.
* It's Important to realize that the Neovim runtime is symlinked to spacevim installation folder. Essentially Spacevim
hijacks Neovim or (GVim). See `dotfiles.bat` for details. 

### Visual Studio
The `vs` folder contains exported settings for Visual Studio.
I have installed [VsVim](https://marketplace.visualstudio.com/items?itemName=JaredParMSFT.VsVim)  Extension to use Vim as an editor inside Visual Studio. Visual Studio will read `_vsvimrc` in home folder, which contains core configurations and vim mappings of Visual Studio commands. The only Visual Studio configuration needed in `Tools\Options\VsVim\General` is to choose `vsvimrc files only` for `VimRc File Loading`

### Finally install windows dotfiles 
After making sure that all the programs you want to configure with dotfiles are installed,
and environmental variables in `dotfiles.bat` point to the right folders, 
you can run the `dotfiles.bat` as an Administrator. It's recommended to comment out 
configurations that you don't use with rems.
