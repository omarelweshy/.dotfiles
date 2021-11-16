# export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/omar/.oh-my-zsh"
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(
    git
    dnf
    zsh-syntax-highlighting
    zsh-autosuggestions
    fzf
    docker
)

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/gems/bin:$PATH"
export PATH="/home/omar/.local/share/solana/install/active_release/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

source $HOME/.zsh_profile
source ~/.nvm/nvm.sh
source $ZSH/oh-my-zsh.sh

fpath=(~/.zsh.d/ $fpath)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s /home/omar/.autojump/etc/profile.d/autojump.sh ]] && source /home/omar/.autojump/etc/profile.d/autojump.sh
