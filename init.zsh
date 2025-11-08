#!/usr/bin/env bash

mkdir -p ~/.config

stow -t "$HOME" dconfig git zsh
