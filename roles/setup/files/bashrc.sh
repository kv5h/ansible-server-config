export LSCOLORS=Gxfxcxdxbxegedabagacad
alias ll='ls -laG'
export PS1="\[\033[37m\]\u@\[\033[31m\]\h\[\033[37m\]_\$(date +%Y%m%d%H%M%S)_\w\n>>> "
alias random8='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 8 | head -n 1'
alias random16='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 16 | head -n 1'
alias random32='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 32 | head -n 1'
alias random64='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 64 | head -n 1'
alias random128='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 128 | head -n 1'
alias lrandom8='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 8 | head -n 1 | tr '[:upper:]' '[:lower:]''
alias lrandom16='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 16 | head -n 1 | tr '[:upper:]' '[:lower:]''
alias lrandom32='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 32 | head -n 1 | tr '[:upper:]' '[:lower:]''
alias lrandom64='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 64 | head -n 1 | tr '[:upper:]' '[:lower:]''
alias lrandom128='cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 128 | head -n 1 | tr '[:upper:]' '[:lower:]''
alias easypush="git commit -m $(cat /dev/urandom | base64 | tr -dc "a-zA-Z0-9" | fold -w 16 | head -n 1) && git push"
eval "$(direnv hook bash)"
