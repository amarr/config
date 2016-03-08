export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

# Add git completion
if [ -e "/usr/local/git/contrib/completion/git-completion.bash" ] ; then
        source "/usr/local/git/contrib/completion/git-completion.bash"
fi

# Add git branch to prompt
if [ -e "/usr/local/git/contrib/completion/git-prompt.sh" ] ; then
        source "/usr/local/git/contrib/completion/git-prompt.sh"
        PS1='\n\[\e[0;32m\]\u@\h \[\e[0;33m\]\w$(__git_ps1 " (%s)")\n\[\e[0m\]\$ '
else
        PS1='\n\[\e[0;32m\]\u@\h \[\e[0;33m\]\w\n\[\e[0m\]\$ '
fi

# Support git autocomplete
if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
fi
