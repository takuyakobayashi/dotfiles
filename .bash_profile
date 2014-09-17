####################################
## alias ###########################
####################################
alias la='ls -a'
alias ll='ls -l'
alias lal='ll -a'
alias lla='ll -a'
alias cl='clear'
alias rm='rm -i'
## git alias(omit the input of the 'git' command)
alias st='git status'
alias fe='git fetch'
alias br='git branch'
alias lo='git log'
alias ch='git checkout'

alias sublime='open -a /Applications/Sublime\ Text\ 2.app/'
alias mou='open -a /Applications/Mou.app/'
function em(){
    sh ~/dotfiles/launch_em.sh $1
}

####################################
### path ###########################
####################################
## rbenv
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

####################################
### mac ports ######################
####################################
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib:$PATH

####################################
### Git ############################
####################################
GIT_PS1_SHOWDIRTYSTATE=true

####################################
### directory color ################
####################################
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

####################################
### prompt & powerline-shell #######
####################################
plshell_path=~/powerline-shell/powerline-shell.py
if [ -e $plshell_path ];then
    function _update_ps1() {
        export PS1="$($plshell_path $? 2> /dev/null)"
    }
    export PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
else
    export PS1='\[\e[01;36m\]\u:\[\e[0;37m\]\w \[\e[1;36m\]$(__git_ps1 "(%s)")\[\e[0m\] \n\[\e[01;35m\]\$\[\e[00m\] '
fi

####################################
### load setting depends env #######
####################################
if [ -f "$HOME/.bash_profile_home" ]; then
  . "$HOME/.bash_profile_home"
fi
if [ -f "$HOME/.bash_profile_comp" ]; then
  . "$HOME/.bash_profile_comp"
fi
