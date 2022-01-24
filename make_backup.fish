#!/bin/fish

function relativedir
	set full_dir (basedir $argv[1])
    set full_base (basedir $argv[2])
    if test $full_dir = $full_base
		echo "."
		return 0
	end
    string replace $full_base/ '' $full_dir
end

function basedir
    set full_dir (realpath $argv[1])
    if test -d $full_dir
		echo $full_dir
		return 0
	end
    set ret (string split -r -m1 / $full_dir)
	echo $ret[1]
end

function backup
    set rel_dir (relativedir $argv[1] $HOME)
	set file (basename $argv[1])
    set copy_path (string join "/" $rel_dir $file)
    mkdir -p $rel_dir
	echo "copy $argv[1] => $copy_path"
    cp $argv[1] $copy_path
end

backup ~/.config/nvim/init.vim
backup ~/.config/nvim/lua/nvim-cmp.lua
backup ~/.config/fish/config.fish
backup ~/.config/alacritty/alacritty.yml
backup ~/.tmux.conf
