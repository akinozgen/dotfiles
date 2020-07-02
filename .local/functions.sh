#!/bin/bash
parse_git_branch() {
	git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

add_alias() {
	echo "\nalias $2=$1" >> ~/.local/aliases.sh
	source ~/.local/aliases.sh
}

