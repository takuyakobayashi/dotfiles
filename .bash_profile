####################################
## alias ###########################
####################################
alias la='ls -a'
alias ll='ls -l'
alias lal='ll -a'
alias lla='ll -a'
alias cl='clear'
alias rm='rm -i'
alias sublime='open -a /Applications/Sublime\ Text\ 2.app/'
alias mou='open -a /Applications/Mou.app/'

####################################
### path ###########################
####################################
## rbenv
export PATH="$PATH:$HOME/.rbenv/bin"
eval "$(rbenv init -)"

# !!! it is environment-dependent !!!
## Android For Xamarin
# export JAVA_HOME=`/usr/libexec/java_home`
# export PATH=$PATH:$JAVA_HOME/bin
# export ANDROID_HOME=$HOME/Library/developer/xamarin/android-sdk-mac_x86
# export PATH=$PATH:$ANDROID_HOME/platform-tools
# export PATH=$PATH:$ANDROID_HOME/tools
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!

####################################
### mac ports ######################
####################################
export PATH=/opt/local/bin:/opt/local/sbin:/opt/local/lib:$PATH

####################################
### Git ############################
####################################

# !!! it is environment-dependent !!!
# export PATH=/usr/local/git/bin:$PATH
# source /usr/local/git/contrib/completion/git-completion.bash
# source /usr/local/git/contrib/completion/git-prompt.sh
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
GIT_PS1_SHOWDIRTYSTATE=true

####################################
### directory color ################
####################################
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

####################################
### prompt #########################
####################################
export PS1='\[\e[01;36m\]\u:\[\e[0;37m\]\w \[\e[1;36m\]$(__git_ps1 "(%s)")\[\e[0m\] \n\[\e[01;35m\]\$\[\e[00m\] '

####################################
### powerline-shell ################
####################################
#function _update_ps1() {
#   export PS1="$(~/powerline-shell.py $?)"
#}
#export PROMPT_COMMAND="_update_ps1"

####################################
### load setting depends env #######
####################################
if [ -f "$HOME/.bash_profile_home" ]; then
  . "$HOME/.bash_profile_home"
fi
if [ -f "$HOME/.bash_profile_comp" ]; then
  . "$HOME/.bash_profile_comp"
fi