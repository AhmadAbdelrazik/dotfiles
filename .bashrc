#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

source /usr/share/git/completion/git-prompt.sh

alias ls='ls --color=auto'
alias la='ls -a'
alias grep='grep --color=auto'
PS1='\[\e[38;5;167m\]$([ $? != 0 ] && echo "✗")\[\e[0m\]\[\e[38;5;109m\]\u@\h\[\e[0m\]:\[\e[38;5;142m\]\w\[\e[0m\]\[\e[38;5;214m\]$(__git_ps1 " (%s)")\[\e[0m\]\[\e[38;5;223m\]\$ \[\e[0m\]'

alias v=nvim
alias vim=nvim
alias tk='tmux kill-server'

bind -x '"\C-f": tmux-sessionizer'

export PATH="$PATH:~/.local/scripts/"
export PATH="$PATH:~/go/bin/"

eval "$(starship init bash)"
