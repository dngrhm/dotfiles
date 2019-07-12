# .zshrc
# Uncomment to show trace statements
# export DEBUG_TRACE=1

# Plugins
if [[ -n ${DEBUG_TRACE} ]]; then echo "Plugins..."; fi
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-abbrev-alias/abbrev-alias.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-git-poooosh/zsh-git-poooosh.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh

# zsh brew completions
if [[ -n ${DEBUG_TRACE} ]]; then echo "Brew Completions..."; fi
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# nvm
# https://github.com/nvm-sh/nvm
if [[ -n ${DEBUG_TRACE} ]]; then echo "NVM..."; fi
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zsh autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
if [[ -n ${DEBUG_TRACE} ]]; then echo "autosuggestions..."; fi
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# pure prompt
# https://github.com/sindresorhus/pure
if [[ -n ${DEBUG_TRACE} ]]; then echo "Prompt..."; fi
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit
autoload -Uz colors && colors
prompt pure

# rbenv
# https://github.com/rbenv/rbenv
if [[ -n ${DEBUG_TRACE} ]]; then echo "RBENV..."; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Aliases
if [[ -n ${DEBUG_TRACE} ]]; then echo "Aliases..."; fi
source ~/dotfiles/aliases

#http://zsh.sourceforge.net/Doc/Release/Options.html
SAVEHIST=2000
HISTSIZE=2000
HISTFILE=~/.zsh_history
setopt APPEND_HISTORY
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt EXTENDED_HISTORY
setopt HIST_SAVE_NO_DUPS
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_FIND_NO_DUPS

# flutter
if [[ -n ${DEBUG_TRACE} ]]; then echo "Flutter..."; fi
export PATH="$PATH:$HOME/bin/flutter/bin"

# Golang
if [[ -n ${DEBUG_TRACE} ]]; then echo "Golang..."; fi
export GOPATH='~/go'

export PATH="$PATH:$HOME/bin"

export EDITOR=emacs
