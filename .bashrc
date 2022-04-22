# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '


###### ALIASIS 
# git bare dotfiles
alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# ffplay Music and Video Player
alias mp='for f in *.mp3 ; do ffplay -nodisp -autoexit "$f"; done'
# open emacs in terminal mode
alias emacs='emacs -nw'
# gcc compiler
alias ggc='gcc -Wall -Wextra -Werror'

# random color script 
colorscript random

# starship enable bash
eval "$(starship init bash)"

# Rust Languge Package Manager
. "$HOME/.cargo/env"

# Deno runtime for JavaScript and TypeScript. 
. "$HOME/.deno/bin/deno"
