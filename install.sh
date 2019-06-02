#!/bin/bash

echo -n "> install plug ..."
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim > /dev/null 2>&1 \
    && echo " done" \
    || echo " fail"

echo -n "> pull package ..."
git submodule update --init --recursive > /dev/null 2>&1 \
    && echo " done" \
    || echo " fail"

echo -n "> install fzf"
which fzf || sudo dnf install -y fzf
