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
path=("$HOME/.config/composer/vendor/bin" $path)
path=("$HOME/.local/bin" $path)


alias l='ls -lah'
alias la='ls -lAh'
alias ll='ls -lh'
alias ls='ls -G'
alias lsa='ls -lah'
alias cd='z'
alias y='yazi'
alias h='herdr'
alias ff='fastfetch'
alias g++='g++ -pedantic-errors -std=c++20 -Wall -Wextra -Wpedantic -Werror -Weffc++ -Wconversion -Wsign-conversion'

alias grep='grep --color=auto'

alias v=nvim
alias vi=vim
alias tk='tmux kill-server'
alias ta='tmux a'

# Bind Ctrl+f to the widget
bindkey -s ^f "herdr-sessionizer\n"
bindkey '^ ' autosuggest-accept

# Map Ctrl+Left and Ctrl+Right for Kitty/Zsh
bindkey "\e[1;5D" backward-word
bindkey "\e[1;5C" forward-word

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

export EDITOR=nvim

# . "$HOME/.local/bin/env"

setopt COMBINING_CHARS

export GTK_IM_MODULE=ibus
export QT_IM_MODULE=ibus
export XMODIFIERS=@im=ibus

export NAME='Ahmad Abdelrazik'
export EMAIL='ahmadabdelrazik159@gmail.com'

export GTK_THEME=Adwaita:dark
export GTK2_RC_FILES=/usr/share/themes/Adwaita-dark/gtk-2.0/gtkrc
export QT_STYLE_OVERRIDE=Adwaita-Dark

export GOMAXPROCS=4
export GOMEMLIMIT=6GiB
