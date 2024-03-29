alias ls="ls --color=tty"
alias grep="grep --color=tty"
alias lsa="ls -lah"
alias l="ls -lah"
alias ll="ls -lh"
alias la="ls -lAh"

alias sudo="sudo -v; sudo "
alias rtxup='eval "$(rtx activate zsh)"'

# Completion
source $ZDOTDIR/completion.zsh

# Vim mode
bindkey -v

# Complete suggestion
bindkey "^ " autosuggest-accept

# [Ctrl-P] - move up through the menu selection
bindkey -M viins "^P" up-line-or-history
bindkey -M vicmd "^P" up-line-or-history

# [Ctrl-N] - move down through the menu selection
bindkey -M viins "^N" down-line-or-history
bindkey -M vicmd "^N" down-line-or-history

# [Shift-Tab] - move through the completion menu backwards
if [[ -n "${terminfo[kcbt]}" ]]; then
  bindkey -M emacs "${terminfo[kcbt]}" reverse-menu-complete
  bindkey -M viins "${terminfo[kcbt]}" reverse-menu-complete
  bindkey -M vicmd "${terminfo[kcbt]}" reverse-menu-complete
fi

# [Ctrl-Delete] - delete whole forward-word
bindkey -M viins "^[[3;5~" kill-word
bindkey -M vicmd "^[[3;5~" kill-word

# [Ctrl-RightArrow] - move forward one word
bindkey -M viins "^[[1;5C" forward-word
bindkey -M vicmd "^[[1;5C" forward-word

# [Ctrl-LeftArrow] - move backward one word
bindkey -M viins "^[[1;5D" backward-word
bindkey -M vicmd "^[[1;5D" backward-word

# Prompt
eval "$(starship init zsh)"

# Plugins
source $HOME/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $HOME/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
