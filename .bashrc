export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" 

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export PATH="/home/abozhkov/.local/bin:$PATH"
export PATH="$PATH:/opt/nvim/"

alias v='nvim'
