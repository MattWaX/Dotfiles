#!/bin/sh

tmux new -s "mpc" -d 'while true; do rmpc; done' \; split-window -d 'cava' \; attach
