
alias alpaca='~/Projects/alpaca/chat_mac -m ~/Projects/alpaca/ggml-alpaca-13b-q4.bin'
alias dotfiles='code ~/dot-files'

## Navigation ##
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'
alias .......='cd ../../../../../..'
alias ........='cd ../../../../../../..'
alias .........='cd ../../../../../../../..'
alias ..........='cd ../../../../../../../../..'

# The next line creates an alias to show  hidden files.
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# The next line creates an alias to hide hidden files.
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

## GIT ALIASES ##
alias gs='git status'
alias gcm='git commit -m'
alias ga='git add'
alias gaa='git add .'
alias gd='git diff'
alias gdim='git diff --color-moved=dimmed-zebra HEAD~1'
alias ngcodecoverage='ng test --code-coverage true --reporters junit'
alias gpuom='git push -u origin main'
alias grmc='git rm -r --cached'
alias grbom='git pull --rebase origin main'
alias gls='git ls'
alias gld='git ld'
alias gspp='git stash; git pull; git stash pop'
alias gcam='git commit --amend --no-edit'
alias gca='git commit --amend'
alias fixpush='git commit --amend --no-edit;git push -f'
alias addCluster='python -m ipykernel install --user --name kindle-reviews --display-name "Python (kindle-reviews)"'
alias branches='git for-each-ref --sort=committerdate refs/heads/ --format='\''%(HEAD) %(color:yellow)%(refname:short)%(color:reset) - %(color:red)%(objectname:short)%(color:reset) - %(contents:subject) - %(authorname) (%(color:green)%(committerdate:relative)%(color:reset))'\'
alias cleanBranches='git branch --merged | grep -Ev "(\*|main|staging)" | xargs git branch -d; git gc --aggressive'
alias pruneBranches='git branch -vv | grep origin | grep sc | awk '{print $1}' | xargs -L 1 git branch -d'


# git aliases from steve
source ~/.git-aliases.zsh

# MACHINES
alias pi='ssh admin@yunohost.local'
