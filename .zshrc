ZSH_THEME = candy

# If not running interactively, don't do anything
[[ $- != *i* ]] && return


# Aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ll="ls -l"
alias cd..="cd .."
alias stab='shutdown now'

eval "$(ssh-agent -s)"

clear
echo "Welcome to White Space."
echo "You have been living here for as long as you can remember."
echo ""
