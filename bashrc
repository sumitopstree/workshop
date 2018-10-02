alias ssh='ssh -A'
alias apt='sudo apt'
alias dpkg='sudo dpkg'
alias vi='vim'
alias ssh='ssh -A'
#display user and hostname
#export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]\$ '
#display only username
export PS1='${debian_chroot:+($debian_chroot)}\[\033[01;31m\]\u\[\033[00m\]:\[\033[01;36m\]\W\[\033[00m\]\$ '
