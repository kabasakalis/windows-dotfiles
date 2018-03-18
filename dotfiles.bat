

SET DOTFILES_HOME=%userprofile%\windows_dotfiles
SET VIM_HOME="C:\Program Files (x86)\Vim"
SET VIM_RUNTIME="C:\Program Files (x86)\Vim\vim80"

mklink  %userprofile%\_vimrc %DOTFILES_HOME%\vim\_vimrc
mklink  %userprofile%\_vsvimrc %DOTFILES_HOME%\vim\_vsvimrc
mklink  %userprofile%\plugins.vim  %DOTFILES_HOME%\vim\plugins.vim

mklink  %VIM_RUNTIME%\autoload\plug.vim  %DOTFILES_HOME%\vim\autoload\plug.vim
mklink  %VIM_RUNTIME%\autoload\utils.vim  %DOTFILES_HOME%\vim\autoload\utils.vim
mklink  %VIM_RUNTIME%\colors\Tomorrow-Night.vim  %DOTFILES_HOME%\vim\color\Tomorrow-Night.vim



timeout 100
