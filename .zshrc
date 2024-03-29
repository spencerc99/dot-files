## ANACONDA
export PATH="$PATH:/usr/local/bin/flutter/bin"

# Environemnt Variables
export RB_MONGO_URI="mongodb://heroku_1slm4741:fpljkulm7cd16nb8f75mqp0ume@ds245755.mlab.com:45755/heroku_1slm4741"

# fix python console spacing on backspace
export TERMINFO=/usr/share/terminfo

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=/Users/spencerchang/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="powerlevel9k/powerlevel9k"
# POWERLEVEL9K_MODE='nerdfont-complete'
# POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(ssh dir vcs newline status)
# POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(command_execution_time anaconda)
# POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
# POWERLEVEL9K_ANACONDA_BACKGROUND="cyan"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git macos z python zsh-syntax-highlighting zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# User configuration
# My custom theme

### Moon phases
local phase=$(sh ~/dot-files/current_moon_phase.sh)

### host name
### see custom colors by typing `spectrum_ls`
### %F{#hexcode} for custom color
# https://www.linkedin.com/pulse/making-custom-zsh-theme-fun-aesthetic-md-mohibur-rahman/
# https://rzhao.io/blog/2015/08/26/zsh-prompt/
local host_name="%{$FG[008]%}正"

# customize prompt of robyrussell
NEWLINE=$'\n'
HOSTNAME="%B$host_name%b"
PROMPT="$phase%{$fg[yellow]%}%@ "
PROMPT+="%{$fg[cyan]%}%~%{$reset_color%}${NEWLINE}"
PROMPT+="${HOSTNAME}%B%(?:%{$fg_bold[green]%}∴ :%{$fg_bold[red]%}∴ )%b%{$reset_color%}"

# based on `robbyrussell` theme's git prompt
# reference: https://github.com/ohmyzsh/ohmyzsh/blob/master/themes/robbyrussell.zsh-theme
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%b%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[red]%} ✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

RPROMPT='$(git_prompt_info)'
# ZSH_THEME="agnoster"
# Change cursor to blinking block
echo -e -n "\x1b[\x31 q"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# set default editor to vim
alias editor=vim
# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

source ~/.aliases.zsh

addcondaenv() { python -m ipykernel install --user --name "$1" --display-name "Python ($1)" }

# Hide username@computer on startup
DEFAULT_USER=$USER
prompt_context(){} 

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/spencerchang/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/spencerchang/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/spencerchang/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/spencerchang/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
# __conda_setup="$('/Users/spencerchang/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
# if [ $? -eq 0 ]; then
#     eval "$__conda_setup"
# else
#     if [ -f "/Users/spencerchang/opt/anaconda3/etc/profile.d/conda.sh" ]; then
#         . "/Users/spencerchang/opt/anaconda3/etc/profile.d/conda.sh"
#     else
#         export PATH="/Users/spencerchang/opt/anaconda3/bin:$PATH"
#     fi
# fi
# unset __conda_setup
# <<< conda initialize <<<


# handles brew setup in path for m1?
eval $(/opt/homebrew/bin/brew shellenv)

# for 1password CLI / github integration
source /Users/spencerchang/.config/op/plugins.sh

# naive way to hide (base) from prompt
# more solutions: https://stackoverflow.com/questions/60807783/anacondaconda-how-to-show-only-a-non-base-environment
PROMPT=$(echo $PROMPT | sed 's/(base) //')

# Created by `pipx` on 2023-03-01 06:59:42
export PATH="$PATH:/Users/spencerchang/.local/bin"
