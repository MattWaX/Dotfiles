#!/bin/sh

zellij delete-session "MUSIC CONTROLLER" --force
zellij -n ~/.config/zellij/layouts/musicplayer.kdl -s "MUSIC CONTROLLER"
