HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
force_color_prompt=yes
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    else
        color_prompt=
    fi
fi
PROMPT_ALTERNATIVE=twoline
NEWLINE_BEFORE_PROMPT=yes
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
fi
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    export LS_COLORS="$LS_COLORS:ow=30;44:" # fix ls color for folders with 777 permissions

    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
    alias diff='diff --color=auto'
    alias ip='ip --color=auto'

    export LESS_TERMCAP_mb=$'\E[1;31m'     # begin blink
    export LESS_TERMCAP_md=$'\E[1;36m'     # begin bold
    export LESS_TERMCAP_me=$'\E[0m'        # reset bold/blink
    export LESS_TERMCAP_so=$'\E[01;33m'    # begin reverse video
    export LESS_TERMCAP_se=$'\E[0m'        # reset reverse video
    export LESS_TERMCAP_us=$'\E[1;32m'     # begin underline
    export LESS_TERMCAP_ue=$'\E[0m'        # reset underline
fi

# if the command-not-found package is installed, use it
if [ -x /usr/lib/command-not-found -o -x /usr/share/command-not-found/command-not-found ]; then
  function command_not_found_handle {
    # check because c-n-f could've been removed in the meantime
    if [ -x /usr/lib/command-not-found ]; then
       /usr/lib/command-not-found -- "$1"
       return $?
    elif [ -x /usr/share/command-not-found/command-not-found ]; then
       /usr/share/command-not-found/command-not-found -- "$1"
       return $?
    else
       printf "%s: command not found\n" "$1" >&2
       return 127
    fi
  }
fi

alias ll='ls -laG'
export PS1="[\u@\h_\$(date +%Y%m%d-%H%M%S)_\w]\n>>> "
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
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
