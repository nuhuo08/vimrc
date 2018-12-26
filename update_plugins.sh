#!/bin/bash

declare -a arr=("ale https://github.com/w0rp/ale"
"vim-yankstack https://github.com/maxbrunsfeld/vim-yankstack"
"ack.vim https://github.com/mileszs/ack.vim"
"bufexplorer https://github.com/corntrace/bufexplorer"
"ctrlp.vim https://github.com/ctrlpvim/ctrlp.vim"
"nerdtree https://github.com/scrooloose/nerdtree"
"open_file_under_cursor.vim https://github.com/amix/open_file_under_cursor.vim"
"snipmate-snippets https://github.com/scrooloose/snipmate-snippets"
"tlib https://github.com/vim-scripts/tlib"
"vim-addon-mw-utils https://github.com/MarcWeber/vim-addon-mw-utils"
"vim-bundle-mako https://github.com/sophacles/vim-bundle-mako"
"vim-indent-object https://github.com/michaeljsmith/vim-indent-object"
"vim-snipmate https://github.com/garbas/vim-snipmate"
"vim-snippets https://github.com/honza/vim-snippets"
"vim-expand-region https://github.com/terryma/vim-expand-region"
"vim-multiple-cursors https://github.com/terryma/vim-multiple-cursors"
"vim-fugitive https://github.com/tpope/vim-fugitive"
"goyo.vim https://github.com/junegunn/goyo.vim"
"vim-zenroom2 https://github.com/amix/vim-zenroom2"
"vim-commentary https://github.com/tpope/vim-commentary"
"vim-gitgutter https://github.com/airblade/vim-gitgutter"
"vim-flake8 https://github.com/nvie/vim-flake8"
"lightline.vim https://github.com/itchyny/lightline.vim"
"lightline-ale https://github.com/maximbaz/lightline-ale"
"vim-abolish https://github.com/tpope/tpope-vim-abolish"
"mru.vim https://github.com/vim-scripts/mru.vim"
"tabular https://github.com/godlygeek/tabular"
"a.vim https://github.com/vim-scripts/a.vim"
"fcitx.vim https://github.com/vim-scripts/fcitx.vim"
"tagbar https://github.com/majutsushi/tagbar"
"vim-easymotion https://github.com/easymotion/vim-easymotion"
"vim-nerdtree-tabs https://github.com/jistr/vim-nerdtree-tabs"
"vim-superman https://github.com/jez/vim-superman"
"YCM-Generator https://github.com/rdnetto/YCM-Generator"
"YouCompleteMe https://github.com/Valloric/YouCompleteMe"
)

if [ ! -d sources_non_forked ]; then
	mkdir sources_non_forked
fi

cd sources_non_forked

for i in "${arr[@]}"
do
	stringarray=($i)
	if [ -d ${stringarray[0]} ]; then
		cd ${stringarray[0]}
		git pull --rebase
		echo ${stringarray[0]}
		cd ..
	else
		git clone --depth 1 ${stringarray[1]} ${stringarray[0]}
		echo ${stringarray[1]}
	fi
done

cd YouCompleteMe
git submodule update --init --recursive --depth 1

