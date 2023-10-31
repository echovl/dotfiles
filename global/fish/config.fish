if status is-interactive
    # Commands to run in interactive sessions can go here
end

# nvim as manpager
set -x MANPAGER "nvim +Man!"

# suggestion completion
bind -k nul forward-char

# no greeting
set -U fish_greeting

# aliases
alias l="ls -al"
alias rtxup="rtx activate fish | source"

# prompt
starship init fish | source
