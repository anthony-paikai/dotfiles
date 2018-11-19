PATH=$PATH:/usr/local/sbin
# config setup
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
# Enable tab completion
source ~/.lisa_aliases
source ~/.cms_aliases
source ~/.git-completion.bash
source ~/.bash_aliases
source ~/.git-prompt.sh
# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;35m\]"
reset="\[\033[0m\]"

export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="$purple\u$green\$(__git_ps1)$blue \W $ $reset"
export GOPATH=$HOME/go
export GOBIN=$GOPATH/bin
export PATH=$PATH:$GOBIN

fzcd() {
   local file
   local dir
   file=$(fzf +m -q "$1") && dir=$(dirname "$file") && cd "$dir"
}
fzvim() {
   local file
   file=$(fzf +m -q "$1") && vim "$file"
}
