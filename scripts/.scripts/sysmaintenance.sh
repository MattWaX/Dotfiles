#!/bin/sh

echo "Updating system"
paru -Syu --sudoloop --skipreview

echo "Clearing pacman cache"
pacman_cache_space_used="$(sudo du -sh /var/cache/pacman/pkg/)"
paccache -r 
echo "Space saved: $pacman_cache_space_used" 

echo "Removing orphan packages"
paru -Qdtq | paru -Rns -

# echo "Clearing ~/.cache"
# home_cache_used="$(sudo du -sh ~/.cache)"
# sudo rm -rf ~/.cache/
# echo "Spaced saved: $home_cache_used"

echo "Clearing system logs"
sudo journalctl --vacuum-time=7d
