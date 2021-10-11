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

source $ZSH/oh-my-zsh.sh

# User configuration

export MANPATH="/usr/local/man:$MANPATH"

# export LANG=en_US.UTF-8

<<<<<<< HEAD
# fzf config
=======
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="v ~/.zshrc"
alias sourcezshconfig="source ~/.zshrc"
alias vimconfig="v ~/.config/nvim/init.vim"
# alias ohmyzsh="mate ~/.oh-my-zsh"

>>>>>>> parent of 6a50d01... Add golang plugin to vim
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_OPS="--extended"
export FZF_DEFAULT_COMMAND='rg --files --follow --no-ignore-vcs --hidden -g "!{node_modules/*,.git/*}"'

<<<<<<< HEAD
# aliases
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias zshconfig="vim ~/.zshrc"
alias sourcezshconfig="source ~/.zshrc"
alias vimconfig="vim ~/.config/nvim/init.vim"
alias vim="nvim"
=======
alias v="nvim"
>>>>>>> parent of 6a50d01... Add golang plugin to vim
alias migrate="python3 manage.py migrate"
alias makemigrations="python3 manage.py makemigrations"
alias runserver="python3 manage.py runserver"
alias e="exit"
alias oldvim="\vim"
alias m="mysql -u omar -p"
alias switchjava="sudo update-alternatives --config java"
alias gc="git clone"
alias gp="git push"

source ~/.nvm/nvm.sh
[[ -s /home/omar/.autojump/etc/profile.d/autojump.sh ]] && source /home/omar/.autojump/etc/profile.d/autojump.sh

# Install Ruby Gems to ~/gems
export GEM_HOME="$HOME/gems"
export PATH="$HOME/gems/bin:$PATH"
fpath=(~/.zsh.d/ $fpath)

# Golang Config
export PATH=$PATH:/usr/local/go/bin

# git add, commit and push function
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
