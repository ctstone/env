autoload -Uz compinit && compinit
autoload -Uz bashcompinit && bashcompinit
autoload -Uz vcs_info
alias k=kubectl
complete -F __start_kubectl k
source <(kubectl completion zsh)

export CLICOLOR=1
export PROMPT='%B%F{240}%1~%f%b %# '

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

source /usr/local/Cellar/azure-cli/*/etc/bash_completion.d/az

export EDITOR=vi

precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%r:%b'
