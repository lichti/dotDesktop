#!/bin/bash

function copy_files(){
	local SRC=$1
	local DST=$2
	local TXT=$3
	if [ -d $SRC ];then
                echo "...Copying new $TXT"
                cp -r $SRC/* $DST
	else
                echo "...$TXT not found"
                echo; echo
        fi
	return 0
}

function make_dir(){
	local DIR=$1
        if [ -d $DIR ];then
                echo "...Exists $DIR"
        else
                echo "...Creating $DIR"
                mkdir -p $DIR
        fi
	return 0
}

function is_x86_64(){
	if [ $(arch)=="x86_64" ];then
		echo 1
	else
		echo 0
	fi
	return 0
}

