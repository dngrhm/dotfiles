# .zshrc
# Uncomment to show trace statements
# export DEBUG_TRACE=1
export DOTFILES_DIR="$HOME/dotfiles"

# Plugins
if [[ -n ${DEBUG_TRACE} ]]; then echo "Plugins..."; fi
source ${DOTFILES_DIR}/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source ${DOTFILES_DIR}/zsh/plugins/zsh-abbrev-alias/abbrev-alias.plugin.zsh
# source ${DOTFILES_DIR}/zsh/plugins/zsh-git-poooosh/zsh-git-poooosh.plugin.zsh
source ${DOTFILES_DIR}/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.plugin.zsh

# zsh brew completions
if [[ -n ${DEBUG_TRACE} ]]; then echo "Brew Completions..."; fi
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# zsh autosuggestions
# https://github.com/zsh-users/zsh-autosuggestions
if [[ -n ${DEBUG_TRACE} ]]; then echo "autosuggestions..."; fi
source ${DOTFILES_DIR}/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# pure prompt
# https://github.com/sindresorhus/pure
if [[ -n ${DEBUG_TRACE} ]]; then echo "Prompt..."; fi
autoload -Uz promptinit && promptinit
autoload -Uz compinit && compinit
autoload -Uz colors && colors
prompt pure

# Aliases
if [[ -n ${DEBUG_TRACE} ]]; then echo "Aliases..."; fi
source ${DOTFILES_DIR}/aliases

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
export GOPATH=$(eval echo "$HOME/go")

export PATH="$PATH:$HOME/bin"

export EDITOR=emacs
export PATH="/usr/local/opt/mongodb-community@4.0/bin:$PATH"

# Let git know about GPG key
export GPG_TTY=$(tty)

# Local Lotus net
export LOTUS_PATH=~/.lotus-local-net
export LOTUS_MINER_PATH=~/.lotus-miner-local-net
export LOTUS_SKIP_GENESIS_CHECK=_yes_
export CGO_CFLAGS_ALLOW="-D__BLST_PORTABLE__"
export CGO_CFLAGS="-D__BLST_PORTABLE__"

# bun completions
[ -s "/Users/dgraham/.bun/_bun" ] && source "/Users/dgraham/.bun/_bun"

# bun
export BUN_INSTALL="/Users/dgraham/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# bun dev
export PATH=$(brew --prefix llvm@13)/bin:$PATH
export LDFLAGS="$LDFLAGS -L$(brew --prefix llvm@13)/lib"
export CPPFLAGS="$CPPFLAGS -I$(brew --prefix llvm@13)/include"

# zig
export PATH="$PATH:$HOME/bin/zig/bin"

# old ruby support attempt
# export RUBY_CONFIGURE_OPTS="--with-openssl-dir=$(brew --prefix openssl@1.1)"
# export LDFLAGS="-L/opt/homebrew/opt/readline/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/readline/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/readline/lib/pkgconfig:$PKG_CONFIG_PATH"
# export optflags="-Wno-error=implicit-function-declaration"
# export LDFLAGS="-L/opt/homebrew/opt/libffi/lib:$LDFLAGS"
# export CPPFLAGS="-I/opt/homebrew/opt/libffi/include:$CPPFLAGS"
# export PKG_CONFIG_PATH="/opt/homebrew/opt/libffi/lib/pkgconfig:$PKG_CONFIG_PATH"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/dgraham/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/dgraham/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/Users/dgraham/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/dgraham/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# sdl2 library
export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export C_INCLUDE_PATH="$(brew --prefix)/include/libavcodec:$C_INCLUDE_PATH"
export CFLAGS="-I$(brew --prefix)/include/libavcodec:$CFLAGS"

# proto
export PROTO_HOME="$HOME/.proto"
export PATH="$PROTO_HOME/shims:$PROTO_HOME/bin:$PATH"
