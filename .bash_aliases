# Disables the extra env variable printing.
if [[ $(uname -s) == Linux  ]]; then
    alias ls='ls --group-directories-first --color=auto'
else
    alias ls='/usr/local/bin/gls --color -h --group-directories-first'
fi
