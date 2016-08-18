#!/usr/bin/env sh

PWD=$(dirname "$0")
cd "$PWD" && {
    git submodule update --init --recursive
    for x in runcoms/z*; do
        ln -s .zprezto/$x ~/.${x##*/}
    done
    ln -s .zprezto/.dircolors ~/.dircolors
}
