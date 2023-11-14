#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -d $HOME/.bin ]] && export PATH=$HOME/.config/sumneko/bin/:$PATH
export PATH=$HOME/.miniconda/bin/:$PATH

export ANDROID_SDK_ROOT=$HOME/Android/Sdk
export ANDROID_HOME=$HOME/Android/Sdk
export ANDROID_NDK=$ANDROID_HOME/ndk-bundle
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/tools
export PATH=$PATH:$ANDROID_SDK_ROOT/tools/bin
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

# dprint
export DPRINT_INSTALL="/home/f412h4d/.dprint"
export PATH="$DPRINT_INSTALL/bin:$PATH"

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"

alias luamake=/home/f412h4d/.config/sumneko/3rd/luamake/luamake

# env
export $(envsubst < /home/f412h4d/.env)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/f412h4d/google-cloud-sdk/path.bash.inc' ]; then . '/home/f412h4d/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/f412h4d/google-cloud-sdk/completion.bash.inc' ]; then . '/home/f412h4d/google-cloud-sdk/completion.bash.inc'; fi

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH
