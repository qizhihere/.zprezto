#!/usr/bin/env sh

PWD=$(dirname "$0")
cd "$PWD" && {
    git pull origin master
    git submodule update --init --recursive
    for x in runcoms/z*; do
        ln -sf .zprezto/$x ~/.${x##*/}
    done
    ln -sf .zprezto/.dircolors ~/.dircolors
}
