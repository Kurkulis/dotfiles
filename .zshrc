# Path to your oh-my-zsh installation.
export ZSH="/home/emil/.oh-my-zsh"

ZSH_THEME="spaceship"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source ~/.bash_profile
source $ZSH/oh-my-zsh.sh

alias note="sh ~/.scripts/note.sh"
alias daily="sh ~/.scripts/daily/daily.sh"
alias weekly="sh ~/.scripts/weekly/weekly.sh"
alias ls="exa -al"
alias duck="sh ~/.scripts/duck.sh"
alias arch-wiki="sh ~/.scripts/arch-wiki.sh"
alias '?'=duck
alias '??'=arch-wiki
