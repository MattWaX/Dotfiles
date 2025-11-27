#!/bin/sh

tmux new -As "mpc" -d 'while true; do rmpc; done' \; split-window -d 'cava' \; attach
