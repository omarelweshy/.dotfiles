export PATH=$HOME/bin:/usr/local/bin:$PATH
# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export TERMINAL=kitty
export EDITOR=nvim
ZSH_THEME="jonathan"
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
    kubectl
)

# exports
# Install Ruby Gems to ~/gems
export PATH="/home/omar/.local/share/solana/install/active_release/bin:$PATH"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'
export JAVA_HOME="/usr/lib/jvm/java-17-openjdk-amd64" # !!!!!!!!!! NOT WORKING WITH MacOS
export PATH=$PATH:$JAVA_HOME/bin
export PATH="/home/omar/Downloads/binaryen-version_100-x86_64-linux/binaryen-version_100/bin/:$PATH"

# GO exports
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/bin/exercism

# Kafka Path
export PATH=$PATH:~/kafka_2.13-3.1.0/bin

# gradle 
export PATH=$PATH:/opt/gradle/gradle-8.1.1/bin

#sources
# source ~/.nvm/nvm.sh
source $ZSH/oh-my-zsh.sh
source ~/.aliases
source ~/.aliases.server
#source /etc/profile.d/maven.sh
fpath=(~/.zsh.d/ $fpath)
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[[ -s /home/omar/.autojump/etc/profile.d/autojump.sh ]] && source /home/omar/.autojump/etc/profile.d/autojump.sh
if [ "$TMUX" = "" ]; then tmux; fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

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
        git push 
    fi
}


function fd() {
  preview="git diff $@ --color=always -- {-1}"
  git diff $@ --name-only | fzf -m --ansi --preview $preview
}

# pnpm
export PNPM_HOME="/home/omar/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"

# Flutter
export PATH="$PATH:/opt/flutter/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
