# Define custom aliases

alias ll="ls -la --color=auto"
alias l="ls -la --color=auto"

if [ $PIMP_GIT_ALIASES ]
then
	alias g="git status --short"
	alias gss="git status"
	alias gd="git diff"
	alias gdc="git diff --cached"
	alias ga="git add"
	alias gap="git add --patch"
	alias gl="git log"
fi
