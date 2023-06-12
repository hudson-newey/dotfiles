# using ohmy-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh
source ~/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.local/bin

alias l="ls -a"
alias ll="ls -al"

alias q="exit"
alias qq="exit"
alias :q="exit"
alias qa="exit"

# needs asciinema
alias record="asciinema rec"

# emacs
alias em="emacs"

# angular auto complete
source <(ng completion script)

# from https://github.com/verhovsky/dotfiles (very cool dotfiles go check it out)
alias e="ls -t --color=auto --group-directories-first"
alias ee="ls -talhv --group-directories-first"
alias u="cd"
alias uu="cd ../"
alias uuu="cd ../.."
alias uuuu="cd ../../.."
alias uuuuu="cd ../../../.."

# copy and paste commands that can be used in pipes
# e.g. "$ cat ./file.txt | c" will copy the contents of the file to your clipboard
alias c="xclip -selection clipboard"
alias p="xclip -selection clipboard -o"
