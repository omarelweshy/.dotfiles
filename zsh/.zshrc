export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH="/home/omar/.oh-my-zsh"
export TERMINAL=kitty
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=7
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="dd/mm/yyyy"
plugins=(
    git
    dnf
    tmux
    zsh-syntax-highlighting
    zsh-autosuggestions
    fzf
    docker
    node
    golang
    python
    heroku
    vscode
    jsontools
)

# exports
# Install Ruby Gems to ~/gems
export PATH="/home/omar/.local/share/solana/install/active_release/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
export PATH=$PATH:$JAVA_HOME/bin
export PATH="/home/omar/Downloads/binaryen-version_100-x86_64-linux/binaryen-version_100/bin/:$PATH"
# GO exports
export GO111MODULE=on
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin

#sources
# source ~/.nvm/nvm.sh
source $ZSH/oh-my-zsh.sh
source ~/.aliases
#source /etc/profile.d/maven.sh
fpath=(~/.zsh.d/ $fpath)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s /home/omar/.autojump/etc/profile.d/autojump.sh ]] && source /home/omar/.autojump/etc/profile.d/autojump.sh
#if [ "$TMUX" = "" ]; then tmux; fi


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# autojump extension
[[ -s /home/omar/.autojump/etc/profile.d/autojump.sh ]] && source /home/omar/.autojump/etc/profile.d/autojump.sh

	autoload -U compinit && compinit -u

# Fuctions 
function gitall() {
    git add .
    if [ "$1" != "" ]
    then
        git commit -m "$1"
    else
        git commit -m Update # default commit message is `update`
    fi 
    if [ "$2" != "" ]
    then 
        git push origin "$2"
    else
        git push origin main
    fi
}

