# Changes the prompt color and format
PROMPT='%F{38}%1/%F{42} %# %f'

# History size  
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=5000

# Case insensitive completion
autoload -U compinit && compinit
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# vim keybinding
bindkey -v

# Git Support
autoload -Uz compinit && compinit
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT='${vcs_info_msg_0_}'
# PROMPT='${vcs_info_msg_0_}%# '
zstyle ':vcs_info:git:*' formats '%b'

# Syntax Highlighting
source /home/robin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
