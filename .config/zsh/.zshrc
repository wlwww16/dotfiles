# zshrc - sourced on every shell open

# autostart
echo
pfetch
#colors

# enable colours and change prompt
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%} "

# automatically cd into typed directory
setopt autocd

# history in cache directory:
HISTSIZE=10000000
SAVEHIST=10000000
HISTFILE=~/.cache/zsh/history

# load aliases from alias file
[ -f "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc" ] && source "${XDG_CONFIG_HOME:-$HOME/.config}/shell/aliasrc"

# basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # include hidden files

export YSU_MESSAGE_FORMAT="$(tput setaf 5)%command$(tput setaf 7) --> $(tput setaf 5)%alias$(tput sgr0)"

# alias suggestions
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh

# load syntax highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
