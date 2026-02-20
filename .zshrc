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

# Path
path=("$HOME/.local/scripts" $path)
path=("$HOME/go/bin" $path)

alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'

alias v=nvim
alias vim=nvim
alias tk='tmux kill-server'

# Bind Ctrl+f to the widget
bindkey -s ^f "tmux-sessionizer\n"


eval "$(starship init zsh)"
