rem Run this batch file as Administrator to create the symbolic links
rem Note: Before you run this,clone both dotfiles and windows_dotfiles in home folder.
rem Make sure you have installed neovim and NEOVIM_HOME points to the right directory
rem Same with GVim if you want to use it.
rem https://github.com/kabasakalis/dotfiles
rem https://github.com/kabasakalis/windows-dotfiles


rem Make sure the paths below are correct.
rem Neovim with Spacevim
SET HOME =C:\Users\s.kabasakalis
SET WIN_DOTFILES_HOME=%HOME%\windows_dotfiles
SET UBUNTU_DOTFILES_HOME=%HOME%\dotfiles
SET NEOVIM_RUNTIME=C:\dev\neovim\share\nvim\runtime
rem Gvim 
SET VIM_HOME="C:\Program Files\Vim"
SET VIMFILES=%VIM_HOME%\vimfiles
SET VIM_RUNTIME=%VIMHOME%\vim80
rem tools
SET MSYS_ROOT="F:\msys64\mingw64"
SET DROPBOX="F:\Dropbox"
rem ConEmu
SET CONEMU_HOME=%CONEMU_HOME%
rem Visual Studio Code
SET VSSTUDIO_USER="%HOME%\AppData\Roaming\Code\User"


rem ---------------------------------- Visual Studio  User Settings ----------------------------------------------------

rem mklink %VSSTUDIO_USER%\keybindings.json %UBUNTU_DOTFILES_HOME%\vscode\keybindings.json
rem mklink %VSSTUDIO_USER%\settings.json %UBUNTU_DOTFILES_HOME%\vscode\settings.json
rem mklink /J %VSSTUDIO_USER%\snippets %UBUNTU_DOTFILES_HOME%\vscode\snippets


rem ---------------------------------- Neovim with Spavevim ------------------------------------------------------------

rem SPACEVIM dotfiles
mklink /J %HOME%\.SpaceVim.d %UBUNTU_DOTFILES_HOME%\spacevim

rem SPACEVIM neovim Sym link Neovim Runtime to Spacevim
mklink /J %NEOVIM_RUNTIME% %HOME%\.SpaceVim

rem coc.vim settings (Language Server Protocol client for vim)  for Neovim.
rem  Note: You must have downloaded Spavevim repo in home folder before you run this command.
rem  NEOVIM_HOME is sym linked to Spacevim installation folder. 
mklink  %NEOVIM_RUNTIME%\coc-settings.json %UBUNTU_DOTFILES_HOME%\spacevim\config\coc-settings.json



rem ---------------------------------- IntelliJ IDEA settings ----------------------------------------------------------

rem JetBrains
mklink  %HOME%\.ideavimrc %UBUNTU_DOTFILES_HOME%\neovim\.ideavimrc


rem ---------------------------------- Aliases (add this in system Path)------------------------------------------------=
rem mklink /J %userprofile%\aliases %WIN_DOTFILES_HOME%\aliases

rem ---------------------------------- ConEmu settings -----------------------------------------------------------------
rem mklink  %CONEMU_HOME%\ConEmu.xml    %WIN_DOTFILES_HOME%\config\conemu.xml 


rem ---------------------------------- ConEmu settings -----------------------------------------------------------------
rem mklink  %CONEMU_HOME%\ConEmu.xml    %WIN_DOTFILES_HOME%\config\conemu.xml 


rem ---------------------------------- Git Config (add this in system Path)---------------------------------------------
mklink  %HOME%\.gitconfig %UBUNTU_DOTFILES_HOME%\git\gitconfig
mklink  %HOME%\.gitignore_global %UBUNTU_DOTFILES_HOME%\git\gitignore_global

rem ---------------------------------- Tools, mostly for C++ for now ---------------------------------------------------
rem ccls.exe Language Server Protocol for Spacevim C++ IDE features 
rem mklink  %MSYS_ROOT%\bin\ccls.exe %DROPBOX%\dev\cpp\ccls.exe
rem  useful executables
rem mklink /J F:\tools   %DROPBOX%\dev\tools


rem ---------------------------------- GVim (prefer Neovim with Spacevim) ----------------------------------------------
rem mklink  %userprofile%\_vimrc %WIN_DOTFILES_HOME%\vim\_vimrc
rem mklink  %userprofile%\_vsvimrc %WIN_DOTFILES_HOME%\vim\_vsvimrc
rem mklink  %userprofile%\plugins.vim  %WIN_DOTFILES_HOME%\vim\plugins.vim
rem mklink /J %userprofile%\vimsnippets  %WIN_DOTFILES_HOME%\vim\vimsnippets

rem mklink  %VIM_RUNTIME%\autoload\plug.vim  %WIN_DOTFILES_HOME%\vim\autoload\plug.vim
rem mklink  %VIM_RUNTIME%\autoload\utils.vim  %WIN_DOTFILES_HOME%\vim\autoload\utils.vim
rem mklink  %VIM_RUNTIME%\colors\Tomorrow-Night.vim  %WIN_DOTFILES_HOME%\vim\color\Tomorrow-Night.vim
rem coc.vim settings (Language Server Protocol client for vim) for normal vim GVim
rem mklink  %VIMFILES%\coc-settings.json  %UBUNTU_DOTFILES_HOME%\spacevim\config\coc-settings.json

rem ---------------------------------- Neovim (prefer Neovim with Spavevim) --------------------------------------------
rem Attempt for NeoVim (without spacevim) dotfiles, NeoVim sucks on Windows.
rem mklink  %NEOVIM_RUNTIME%\init.vim  %DOTFILES_HOME%\neovim\init.vim
rem mklink  %NEOVIM_RUNTIME%\plugins.vim  %DOTFILES_HOME%\neovim\plugins.vim
rem mklink /J  %NEOVIM_RUNTIME%\autoload  %DOTFILES_HOME%\neovim\autoload
rem mklink /J  %NEOVIM_RUNTIME%\colors  %DOTFILES_HOME%\neovim\colors

timeout 10
