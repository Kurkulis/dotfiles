# Path to your oh-my-zsh installation.
export ZSH="/home/emil/.oh-my-zsh"

ZSH_THEME="spaceship"

EDITOR=vim

# Spaceship prompt settings
SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  elixir        # Elixir section
  swift         # Swift section
  golang        # Go section
  php           # PHP section
  rust          # Rust section
  haskell       # Haskell Stack section
  julia         # Julia section
  docker        # Docker section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  ember         # Ember.js section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  line_sep      # Line break
  jobs          # Background jobs indicator
  char          # Prompt character
)

# Enable command auto-correction.
ENABLE_CORRECTION="true"

plugins=(
    git
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
)

source ~/.bash_profile
source $ZSH/oh-my-zsh.sh

alias journal="cd ~/notes && sh ~/.scripts/journal/journal.sh"
alias save="sh ~/.scripts/journal/save_journal.sh"
alias weekly="sh ~/.scripts/weekly/weekly.sh"
alias ls="exa -al"
alias duck="sh ~/.scripts/duck.sh"
alias arch-wiki="sh ~/.scripts/arch-wiki.sh"
alias '?'=duck
alias '??'=arch-wiki
alias mutt="neomutt"
alias mail="sh ~/.scripts/mail.sh"


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/emil/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/emil/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/emil/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/emil/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
