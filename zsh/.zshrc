# .zshrc

# Plugins
source ~/dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-abbrev-alias/abbrev-alias.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-git-poooosh/zsh-git-poooosh.plugin.zsh
source ~/dotfiles/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh


# nvm
# https://github.com/nvm-sh/nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# zsh autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# pure prompt
# https://github.com/sindresorhus/pure
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit
autoload -Uz colors && colors
prompt pure

# rbenv
# https://github.com/rbenv/rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Aliases
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

export PATH="$HOME/bin:$PATH"

export EDITOR=emacs
