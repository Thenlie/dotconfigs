# oh-my-zsh
export ZSH="$HOME/.oh-my-zsh"

# pnpm
export PNPM_HOME="/Users/leithencrider/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# android
export ANDROID_HOME="/Users/leithencrider/Library/Android/sdk"
export PATH="$PATH:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator"
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# misc
export PKG_CONFIG_PATH="/usr/local/opt/libffi/lib/pkgconfig"
export NODE_OPTIONS=--dns-result-order=ipv4first

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Case-sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

zstyle ':omz:update' mode reminder  # just remind me to update when it's time
zstyle ':omz:update' frequency 14

# The following line will display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
COMPLETION_WAITING_DOTS="true"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
	git
	asdf
	zsh-autosuggestions
	zsh-syntax-highlighting
    vi-mode
)

VI_MODE_SET_CURSOR=true

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# general aliases
alias ls="ls --color=tty"
alias pip3="pip"
alias python3="python"
alias python2="/Users/leithencrider/.pyenv/versions/2.7.18/bin/python"

# git aliases
alias gld="git pull origin develop"
alias gbdall="gb | grep -v "develop" | grep -v "release" | xargs git branch -D"
alias glols="git log --pretty=format:"%h%x09%an%x09%ad%x09%s""
alias glb="git reflog show --pretty=format:'%gs ~ %gd' --date=relative | grep 'checkout:' | grep -oE '[^ ]+ ~ .*' | awk -F~ '!seen[\$1]++' | head -n 10 | awk -F' ~ HEAD@{' '{printf(\"  \\033[33m%s: \\033[37m %s\\033[0m\\n\", substr(\$2, 1, length(\$2)-1), \$1)}'"

# pnpm aliases
alias p="pnpm" # used for any general command
alias pi="pnpm install" # helper for installation
alias px="pnpm run" # helper to run package scripts
alias pxr="pnpm run -r" # helper to recursively run package scripts

# npm aliases
alias n="npm"
alias nr="npm run"
alias nrd="npm run dev"
alias nrt="npm run test"

eval $(/opt/homebrew/bin/brew shellenv)
. /opt/homebrew/opt/asdf/libexec/asdf.sh

. ~/.asdf/plugins/java/set-java-home.zsh


# bun completions
[ -s "/Users/leithencrider/.bun/_bun" ] && source "/Users/leithencrider/.bun/_bun"

