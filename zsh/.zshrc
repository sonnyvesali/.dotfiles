# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
alias vim=nvim
alias zshrc='vim ~/.zshrc'
alias nokhte='cd ~/desktop/kode/nokhte'
alias vimconf='cd ~/.config/nvim && vim .'
alias tmuxconf='cd ~/.tmux.conf && vim .'

bindkey '\t' autosuggest-accept


export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


export PATH="/usr/local/opt/gnupg/bin:$PATH"
export PATH="$PATH":"$HOME/.pub-cache/bin"

[ -d "$HOME/Library/Android/sdk" ] && ANDROID_HOME=$HOME/Library/Android/sdk || ANDROID_HOME=$HOME/Android/Sdk
echo "export ANDROID_HOME=$ANDROID_HOME" >>~/$([[ $SHELL == *"zsh" ]] && echo '.zshenv' || echo '.bash_profile')

export ANDROID_SDK_ROOT=$HOME/Library/Android/sdk
export PATH=$PATH:$ANDROID_SDK_ROOT/emulator
export PATH=$PATH:$ANDROID_SDK_ROOT/platform-tools

alias purgeallbuilds='rm -rf ~/Library/Developer/Xcode/DerivedData/*'

alias adb='/Users/$USER/Library/Android/sdk/platform-tools/adb'

ZSH_THEME="powerlevel10k/powerlevel10k"

export PATH=/opt/homebrew/bin:$PATH
export JAVA_HOME=$(/usr/libexec/java_home -v 11)

export NVM_DIR="$HOME/.nvm"
[ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"                                       
[ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" 
plugins=(git zsh-autosuggestions zsh-syntax-highlighting web-search)

source $ZSH/oh-my-zsh.sh

[ -s "/Users/sonny/.bun/_bun" ] && source "/Users/sonny/.bun/_bun"

export BUN_INSTALL="/Users/sonny/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

__conda_setup="$('/Users/sonny/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sonny/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sonny/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sonny/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

export PATH="$PATH:/Users/sonny/Documents/flutter/bin"

export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init - zsh)"


source ~/.iterm2_shell_integration.zsh

plugins=(git web-search zsh-autosuggestions zsh-syntax-highlighting)

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

