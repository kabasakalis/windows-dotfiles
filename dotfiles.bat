rem Run this batch file as Administrator to create the symbolic links

rem Make sure the paths below are correct.
SET WIN_DOTFILES_HOME=%userprofile%\windows_dotfiles
SET VIM_HOME="C:\Program Files (x86)\Vim"
SET VIM_RUNTIME="C:\Program Files (x86)\Vim\vim80"


rem SET NEOVIM_RUNTIME="C:\Users\spiros\AppData\Local\nvim"
rem SET DOTFILES_HOME=%userprofile%\dotfiles

rem VIM dotfiles
mklink  %userprofile%\_vimrc %WIN_DOTFILES_HOME%\vim\_vimrc
mklink  %userprofile%\_vsvimrc %WIN_DOTFILES_HOME%\vim\_vsvimrc
mklink  %userprofile%\plugins.vim  %WIN_DOTFILES_HOME%\vim\plugins.vim
mklink /J %userprofile%\vimsnippets  %WIN_DOTFILES_HOME%\vim\vimsnippets

mklink  %VIM_RUNTIME%\autoload\plug.vim  %WIN_DOTFILES_HOME%\vim\autoload\plug.vim
mklink  %VIM_RUNTIME%\autoload\utils.vim  %WIN_DOTFILES_HOME%\vim\autoload\utils.vim
mklink  %VIM_RUNTIME%\colors\Tomorrow-Night.vim  %WIN_DOTFILES_HOME%\vim\color\Tomorrow-Night.vim


rem Attempt form NeoVim  dotfiles, NeoVim sucks on Windows.
rem mklink  %NEOVIM_RUNTIME%\init.vim  %DOTFILES_HOME%\neovim\init.vim
rem mklink  %NEOVIM_RUNTIME%\plugins.vim  %DOTFILES_HOME%\neovim\plugins.vim
rem mklink /J  %NEOVIM_RUNTIME%\autoload  %DOTFILES_HOME%\neovim\autoload
rem mklink /J  %NEOVIM_RUNTIME%\colors  %DOTFILES_HOME%\neovim\colors
rem mklink /J  %NEOVIM_RUNTIME%\colors  %DOTFILES_HOME%\neovim\colors
rem mklink /J  %VIM_RUNTIME%\colors  %DOTFILES_HOME%\neovim\colors


timeout 100
