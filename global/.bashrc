#
# ~/.bashrc
#

# Editor
export VISUAL="nvim"
export EDITOR="nvim"

# Default user
export DEFAULT_USER="echo"

# Go
export GOPATH="$HOME/go"
export GOROOT="/usr/lib/go"

# Bun
export BUN_INSTALL="$HOME/.bun"

# Sway
export GDK_BACKEND="wayland,x11"
export QT_QPA_PLATFORM="wayland;xcb"
export XDG_CURRENT_DESKTOP="sway"
export GTK_THEME="Catppuccin-Mocha-Standard-Peach-Dark"

# PATH
if ! [[ $PATH =~ "$HOME/.local/bin" ]]; then
    export PATH="$HOME/.local/bin:$PATH"
fi

if ! [[ $PATH =~ "$GOPATH/bin" ]]; then
    export PATH="$GOPATH/bin:$PATH"
fi

if ! [[ $PATH =~ "$BUN_INSTALL/bin" ]]; then
    export PATH="$BUN_INSTALL/bin:$PATH"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# Fish as default shell
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" ]]
then
	exec fish --login
fi
