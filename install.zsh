#!/usr/bin/env zsh

PWD=$(dirname "$0")
cd "$PWD" && {
    git submodule update --init --recursive
    setopt EXTENDED_GLOB
    for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
        ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
    done
}
