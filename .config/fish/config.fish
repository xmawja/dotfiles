if status is-interactive
    # Commands to run in interactive sessions can go here
end

# remove welcome message
set fish_greeting


###### ALIASIS
# git bare dotfiles
alias config='/usr/local/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
# open emacs in terminal mode
alias emacs='emacs -nw'
# gcc compiler
alias ggc='gcc -Wall -Wextra -Werror'

