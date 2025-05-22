# Matt's Dotfiles
I've spent too much time on this please someone help me.

## Dependencies
These dotfiles are meant to work with only the latest version of the configured software, so if you are using a Debian based distro good luck.
The only dependencies needed are:
* `git`
* `stow`
* [mason dependencies to install LSPs for neovim](https://github.com/williamboman/mason.nvim?tab=readme-ov-file#requirements)
* basic standard unix utilities

## Installation
I've tried to make the installation as easy as possible, so that all you need to do is install the configured programs and copy the dotfiles.
I like to just copy and paste this around different systems so portability is a priority.

```sh
git clone https://github.com/MattWaX/Dotfiles ~/Dotfiles
cd ~/Dotfiles
stow *
```

See super simple!

## Tips
### Just pick what you need
Using `stow *` is the easiest way to link all the dotfiles in the right place, but I don't actually recommend that.
Instead use `stow name_of_the_package`, so that you clutter less your home folder.
Also please read the stow man pages before using it.

The modules I'm currently using are:
```sh
stow river nvim tmux zsh shell scripts starship ghostty yazi\
makeinit aerc fastfetch clang gdb git rmpc sc-im hypr\
vimiv swaync wallpapers waybar wlogout wofi 
```

### Using wofi to launch terminal application
I like sometimes to launch applications like `yazi` and `btop` from wofi, by default the terminal emulator used to do that is xterm, to change the terminal you just need to uninstall xterm from your system and then run these commands:

```sh
sudo rm /bin/xterm #removing the xterm binary
sudo ln -sf /bin/ghostty /bin/xterm # replacing xterm with your terminal of choice
```

Here I've linked ghostty as my terminal of choice, but feel free to put your favorite terminal emulator.

## Bye
Thank you for stopping by, I hope this could help anyone to configure their own software.
Have a nice day!!
