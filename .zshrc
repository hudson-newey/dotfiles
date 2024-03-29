# using ohmy-zsh
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="aussiegeek"

plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh
source ~/.local/bin/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.local/bin/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.local/bin
source /usr/sbin/

eval "$(zoxide init zsh)"

PATH=$PATH:~/go/bin
PATH=$PATH:~/.dotnet/tools
PATH=$PATH:~/.cargo/bin
PATH=$PATH:~/.config/emacs/bin

alias l="ls -a"
alias ll="ls -latrh"

alias q="exit"
alias qq="exit"
alias :q="exit"
alias qa="exit"

# needs asciinema
alias record="asciinema rec"

# vscode
alias vsc="code ."

# emacs
alias em="emacs -Q -nw"

# lunar nvim
alias lvim="/home/grathium/.local/bin/lvim"

# installed with most latex compilers, but not added to PATH
alias pandoc="/usr/bin/pandoc"

# i'm aliasing the gnatmake ada compiler because I think the "ada" alias is more descriptive of its purpose
# this alias is for the ada programming language (https://www.adacore.com/)
alias ada="gnatmake"

# since the code command is broken when using flatpak, we have to rebind it
alias code="flatpak run com.visualstudio.code"

# git shorthand
alias g="git"
alias ga="git add -A"
alias gc="git commit"
alias gp="git push"
alias gs="ga;gc;gp"
alias gm="git pull"
alias gcl="git clone"

# lazy git
alias lg="lazygit"

# npm an pnpm shorthand
alias n="npm"
alias pn="pnpm"

# chatgpt alias
alias gpt="npx chatgpt@latest --model gpt-4 --apiKey '<YOUR API KEY HERE>'"

# angular auto complete
# test if angular exists in PATH
if ng &> /dev/null
then
    source <(ng completion script)
fi

# from https://github.com/verhovsky/dotfiles (very cool dotfiles go check it out)
alias e="ls -t --color=auto --group-directories-first"
alias ee="ls -talhv --group-directories-first"

alias fman="compgen -c | fzf | xargs man"

alias u="z"
alias uu="z .."
alias uuu="z ../.."
alias uuuu="z ../../.."
alias uuuuu="z ../../../.."

# copy and paste commands that can be used in pipes
# e.g. "$ cat ./file.txt | c" will copy the contents of the file to your clipboard
alias c="xclip -selection clipboard"
alias p="xclip -selection clipboard -o"

alias t=tmux
