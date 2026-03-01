# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/abdelrazik/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh

# Path
path=("$HOME/.local/scripts" $path)
path=("$HOME/go/bin" $path)


alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias cd='z'

alias grep='grep --color=auto'

alias v=nvim
alias vi=vim
alias tk='tmux kill-server'
alias ta='tmux a'

# Bind Ctrl+f to the widget
bindkey -s ^f "tmux-sessionizer\n"
bindkey '^ ' autosuggest-accept


eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

. "$HOME/.local/bin/env"
