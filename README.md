# Setup

You should clone this including submodules to get oh-my-zsh
Run

```
git clone --recurse-submodules <repo>
```

## Terminal Setup

1. download iterm2 and pull preferences from this folder
2. Install Oh-my-zsh and change terminal to `zsh` instead of `bash`
3. Install oh-my-zsh theme and associated fonts
4. Install homebrew (https://brew.sh/)
5. The following oh-my-zsh plugins need additional installation
   1. git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
   2. git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
6. Install https://github.com/junegunn/fzf for reverse search

- [ ] add script for setup that does all the above and symlinks the hidden files

crude command right now as follows:

```
cd ~
ln -s ~/dot-files/.* ~/
ln -s ~/dot-files/iterm2_profile ~/
unlink .git
```

- [ ] add moon phase emoji
- [ ] add sunset time
- [ ] figure out .git-completion.bash

## VSCode

1. Set up Settings Sync to retain all extensions and settings and preferences
2. Install the `Fira Code` font family for use with ligatures inside VSCode. You can find installation instructions [here](https://github.com/tonsky/FiraCode/wiki).
3. add `code` to path by looking up "shell command" in VSCode Command Palette

## Misc Setup

1. brew install maccy (clipboard manager)
2. brew install --cask 1password/tap/1password-cli and then set up https://developer.1password.com/docs/cli/shell-plugins/github/
3. follow https://labbots.com/enabling-touch-id-for-access-on-terminal/ to enable using touchID on password prompts
4. `brew install python`

## Git

.gitconfig is set up with all the defaults that I use. The one thing that needs to be configured is the `[user]` setting which you can set by creating a `.gitconfig.local` file in your home directory. It should look something like this:

```
[user]
  name = Spencer Chang
  email = spencerc99@gmail.com
```
