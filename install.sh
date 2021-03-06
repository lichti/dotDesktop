#!/bin/bash
SRC_PATH=$(dirname $0)

for FILE in $SRC_PATH/helpers/*; do
	source $FILE
done

SRC_APP=$SRC_PATH/applications
SRC_ICONS=$SRC_PATH/icons
SRC_THEMES=$SRC_PATH/themes
SRC_EXTESIONS=$SRC_PATH/extensions
SRC_BIN=$SRC_PATH/bin
DST_APP=~/.local/share/applications
DST_ICONS=~/.local/share/icons
DST_THEMES=~/.themes
DST_EXTENSIONS=~/.local/share/gnome-shell/extensions
DST_BIN=~/bin

function install(){
	echo "Installing..."
	make_dir $DST_APP
	copy_files $SRC_APP $DST_APP "applications"

        make_dir $DST_ICONS
	copy_files $SRC_ICONS $DST_ICONS "icons"  

        make_dir $DST_THEMES
	copy_files $SRC_THEMES $DST_THEMES "themes"

        make_dir $DST_EXTENSIONS
	copy_files $SRC_EXTENSIONS $DST_EXTENSIONS "extensions"

        make_dir $DST_BIN
	copy_files $SRC_BIN $DST_BIN "bin"
}

install
