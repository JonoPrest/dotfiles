# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/Jonathan/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

plugins=(
    # other plugins...
    zsh-autosuggestions
    vi-mode
)
source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="nvim ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias flt="cd /Users/Jonathan/Coding/float"
alias k="kubectl"
alias kns="kubens"
alias kctx="kubectx"
alias ze="zellij"
alias chrome="open -a 'Google Chrome'"
alias tr="tree-rs"
alias trs="tree-rs -a -L 1"
alias lenvio="cargo run --manifest-path /Users/Jonathan/Coding/envio/indexer/codegenerator/cli/Cargo.toml --"

export PATH="$PATH:/Users/Jonathan/.foundry/bin"

# opam configuration
[[ ! -r /Users/Jonathan/.opam/opam-init/init.zsh ]] || source /Users/Jonathan/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

autoload -Uz compinit && compinit

# bun completions
[ -s "/Users/Jonathan/.bun/_bun" ] && source "/Users/Jonathan/.bun/_bun"

# Bun
export BUN_INSTALL="/Users/Jonathan/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#Android SDK
export JAVA_HOME=$(/usr/libexec/java_home)
export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# pnpm
export PNPM_HOME="/Users/Jonathan/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

# go
export PATH=$PATH:/Users/Jonathan/go/bin
# go end

# rust
export PATH=$PATH:/Users/Jonathan/.cargo/bin


export PATH=/usr/local/opt/python/libexec/bin:$PATH
# Conda
# eval "$(/Users/Jonathan/miniconda3/bin/conda shell.YOUR_SHELL_NAME hook)"
export PATH=$PATH:/Users/Jonathan/minicona3/bin

# Set nvim as default editor
export VISUAL=nvim
export EDITOR="$VISUAL"

#set key bindings to vi
# bindkey -v
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

# ignore commands in history that start with a space
export HISTCONTROL=ignorespace


source /Users/Jonathan/.config/broot/launcher/bash/br
export PATH="$HOME/.fuelup/bin:$PATH"


# rescript lsp
# export PATH=$PATH:/Users/Jonathan/Coding/rescript-libs/lsp-builds/vsix/darwinarm64
# alias rescript="/Users/Jonathan/Coding/rescript-libs/lsp-builds/vsix/darwinarm64/rescript-tools.exe"


# aws profile
export AWS_PROFILE=envio

#homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

#pyenv
# export PATH=$(pyenv root)/shims:$PATH
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"
eval "$(fnm env --use-on-cd --shell zsh)"


export PATH="$HOME/.local/bin:$PATH"

# Load .env file safely
if [ -f ~/.config/secrets/.env ]; then
  set -a
  source ~/.config/secrets/.env
  set +a
fi
