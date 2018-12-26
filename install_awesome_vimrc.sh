#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime
set runtimepath+=~/.vim_runtime/after

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim
source ~/.vim_runtime/vimrcs/cscope_maps.vim
source ~/.vim_runtime/vimrcs/cscope_quickfix.vim

try
    source ~/.vim_runtime/my_configs.vim
catch
endtry

" Paste mode 0~ 1~
set t_BE=' > ~/.vimrc

echo "Installed the Ultimate Vim configuration successfully! Enjoy :-)"
