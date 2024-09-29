export LANG=en_US.UTF-8
export EDITOR=nvim
export HISTSIZE=50000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE
export HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"

plug "zsh-users/zsh-completions"
autoload -Uz compinit && compinit
autoload -Uz +X bashcompinit && bashcompinit

# Kubectl breaks a little bit, but it's much better
plug "Aloxaf/fzf-tab"

# Does not work well with aws, and some other commands
# plug "marlonrichert/zsh-autocomplete"
plug "zsh-users/zsh-autosuggestions"
# supercharge is forcing selection from the list and overriding suggestions
# plug "zap-zsh/supercharge"
plug "zsh-users/zsh-syntax-highlighting"
plug "unixorn/fzf-zsh-plugin"
plug "jeffreytse/zsh-vi-mode"

# Load and initialise completion system
eval "$(starship init zsh)"
export STARSHIP_CONFIG=~/.config/starship/starship.toml
source ~/.aliases
source ~/.custom-zshrc


