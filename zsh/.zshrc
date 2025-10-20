# cmd prompt
PS1='%F{blue}%B%~%b%f %F{green}❯%f '

# history stuff
HISTFILE=~/.history
HISTSIZE=100000
SAVEHIST=100000

setopt INC_APPEND_HISTORY       
setopt SHARE_HISTORY            
setopt HIST_IGNORE_DUPS         
setopt HIST_FIND_NO_DUPS        
setopt HIST_IGNORE_ALL_DUPS     
autoload -U compinit && compinit

# aliases
alias ls='ls --color=auto -hv'
alias grep='grep --color=auto'
alias diff='diff --color=auto'
alias mv='mv -i'
alias cat='batcat'
alias vim='hx'

# keybinds
bindkey '^[[1;5C' forward-word
bindkey '^[[1;5D' backward-word
bindkey "\e[B" history-beginning-search-forward
bindkey "\e[A" history-beginning-search-backward

# PATH stuff
export PATH="$PATH:/home/$USER/.local/bin"

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# zsh plugins
source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh
