#!/bin/sh

tmux new -As "mpc" -d 'while true; do rmpc; done' \; attach
