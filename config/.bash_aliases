# Define custom aliases

alias ll="ls -la --color=auto"
alias l="ls -la --color=auto"

if [ $PIMP_GIT_ALIASES -eq 1 ]
then
	alias gss="git status"
	alias gd="git diff"
	alias gdc="git diff --cached"
	alias ga="git add"
	alias gl="git log"
fi
