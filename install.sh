#!/usr/bin/env bash

echo "Installation is starting."

printf "1) Stable version (DEFAULT)\n2) Specific branch\nNOTE: If you don't know these, select 1.\n"
read -p ">" branch

if [ "$branch" == "2" ]; then
				read -p "Type a branch name: " branchname
				git clone https://github.com/Quitaxd/nvim.git ~/.config/nvim
				cd ~/.config/nvim
				git checkout $branchname
				cd -
				nvim
else
				git clone https://github.com/Quitaxd/nvim.git ~/.config/nvim
				nvim
fi
