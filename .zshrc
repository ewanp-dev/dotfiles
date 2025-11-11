# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tpe/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-z}={A-Za-z}'
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' rehash true
zmodload zsh/complist
compinit
# End of lines added by compinstall
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/git/git.plugin.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

plugins=(
    fzf
    git
    sudo
    history-substring-search
    colored-man-pages
    zsh-autosuggestions
    zsh-syntax-highlighting
    fast-syntax-highlighting
    zsh-autocomplete
    zsh-z
)

alias copy='xclip -selection clipboard'
alias setpyenv='source .venv/bin/activate'
alias ff='echo "" && fastfetch'
alias nv='nvim'
alias strata='python main.py ~/lib/usd/ALab-main/ALab/entry.usda'
alias cat="bat"
alias ls="echo '' && eza --icons=always"
alias lh="echo '' && eza --icons=always -lah"
alias hou='cd /opt/hfs21.0 && source houdini_setup && cd ~ && clear && houdini'
eval "$(zoxide init zsh)"
alias cd="z"

typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Startup commands
source ~/repos/local/usd-dependency-viewer/.venv/bin/activate


fastfetch
echo ""
echo ""

