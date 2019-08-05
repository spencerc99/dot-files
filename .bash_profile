export JAVA_HOME=$(/usr/libexec/java_home)

source ~/.profile

# The next line creates an alias to show  hidden files.
alias showFiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'

# The next line creates an alias to hide hidden files.
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# added by Anaconda3 4.3.0 installer
export PATH="//anaconda/bin:$PATH"
export PATH="$PATH:~"
# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH
alias gs='git status'
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/spencerchang/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/spencerchang/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/spencerchang/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/spencerchang/Downloads/google-cloud-sdk/completion.bash.inc'; fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
