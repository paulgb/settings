#!/bin/bash

FILES=`ls -A configfiles`

for file in $FILES
do
    home_filename="$HOME/$file"
    link_filename="`pwd`/configfiles/$file"
    tput bold
    echo -n "$file: "
    tput sgr0
    if [ -h "$home_filename" ]
    then
        if [ `readlink -n "$home_filename"` == "$link_filename" ]
        then
            tput setaf 2
            echo "$home_filename already points to $link_filename, nothing to be done"
        else
            tput setaf 1
        echo "WARNING: $home_filename is a symlink to somewhere other than $link_filename, I don't know what to do"
        fi
    elif [ -e "$home_filename" ]
    then
        source_command=""
        if [ $file == ".bashrc" ]
        then
            source_command="source $link_filename"
        elif [ $file == ".vimrc" ]
        then
            source_command="source $link_filename"
        elif [ $file == ".screenrc" ]
        then
            source_command="source $link_filename"
        fi

        if [ "$source_command" == "" ]
        then
            tput setaf 1
            echo "WARNING: $home_filename already exists and I don't know how to source it! Ignoring."
        elif grep "$source_command" $home_filename > /dev/null ;
        then
            tput setaf 2
            echo "$link_file already sourced from $home_filename"
        else
            tput setaf 3
            echo "Adding '$source_command' to $home_filename"
            echo "$source_command" >> $home_filename
        fi
    else
        tput setaf 3
        echo "File ~/$file does not exist in home dir; linking"
        ln -s "$link_filename" "$HOME/$file"
    fi
    tput sgr0
done

