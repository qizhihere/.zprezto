#!/usr/bin/env sh

CUR=$(realpath "$(dirname "$0")")
DST="$HOME/.zprezto"

cd "$CUR" && {
    git pull origin master
    git submodule update --init --recursive

    [ "$CUR" != "$DST" ] && ln -sf "$CUR" "$DST"

    for x in runcoms/z*; do
        ln -sf .zprezto/$x ~/.${x##*/}
    done
    ln -sf .zprezto/.dircolors ~/.dircolors
}
