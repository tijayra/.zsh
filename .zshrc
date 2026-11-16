# --- History ---
HISTFILE=~/.zsh/.zsh_history
HISTSIZE=20000
SAVEHIST=10000

setopt SHARE_HISTORY
setopt EXTENDED_HISTORY
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY

# --- Completion ---
autoload -Uz compinit
compinit

zmodload zsh/complist

setopt MENU_COMPLETE
setopt COMPLETE_IN_WORD
setopt ALWAYS_TO_END
setopt AUTO_LIST

# --- Navigation ---
setopt AUTO_PUSHD
setopt PUSHD_IGNORE_DUPS

# --- Shell behavior ---
setopt NO_BEEP

# --- Environment ---
export EDITOR=nvim
export VISUAL=nvim
export LESS='-R'
export PATH="$HOME/.local/bin:$PATH"

unset SSH_ASKPASS

# --- Aliases ---
[[ -f ~/.zsh/.zsh_aliases ]] && source ~/.zsh/.zsh_aliases

# --- Functions ---
[[ -f ~/.zsh/.zsh_functions ]] && source ~/.zsh/.zsh_functions

# --- Plugins ---
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# --- Startup banner ---
[[ -z "$FASTFETCH_SHOWN" ]] && fastfetch && FASTFETCH_SHOWN=1

# --- Prompt ---
eval "$(starship init zsh)"

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
