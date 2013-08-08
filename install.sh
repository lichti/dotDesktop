#!/bin/bash
function install(){
	echo "Installing..."

	if [ -d ./applications ];then
		if [ -d ./icons ];then
			chk_dest
			echo "...Copying new apps"
			cp -vr ./applications ~/.local/share/
			echo "...Copying new icons"
			cp -vr ./icons ~/.local/share/
		else
			echo "..Icons not found"
			echo "Install failled."
			echo; echo
		fi
	else
		echo "..Applications not found"
		echo "Install failled."
		echo; echo
	fi
}
 
function chk_dest() {
	if [ -d ~/.local/share/applications ];then
		echo "...Exists ~/.local/share/applications"
	else
		echo "...Creating ~/.local/share/applications"
		mkdir -p ~/.local/share/applications
	fi

        if [ -d ~/.local/share/icons ];then
                echo "...Exists ~/.local/share/iconss"
	else
		echo "...Creating ~/.local/share/iconss"
                mkdir -p ~/.local/share/icons
        fi
}

install
