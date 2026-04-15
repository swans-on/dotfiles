# --- History Settings ---
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt APPEND_HISTORY          # Append to history file rather than replace
setopt INC_APPEND_HISTORY      # Write to history file immediately
setopt SHARE_HISTORY           # Share history between different sessions
setopt HIST_IGNORE_DUPS        # Don't record transitions that match the last event

# --- Completion System ---
autoload -Uz compinit && compinit
zstyle ':completion:*' menu select 				# Use arrow keys to navigate completions
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 	# Case-insensitive completion

# --- Keybindings ---
bindkey -v		# Enable Vi-mode
export KEYTIMEOUT=1 	# Reduce the delay when switching from Insert to Normal mode (default is 0.4s)

# --- Git status logic ---
autoload -Uz vcs_info
precmd() { vcs_info }
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%f '
setopt prompt_subst

# --- Prompt ---
PROMPT='%(?..%F{red}[%?]%f )${vcs_info_msg_0_}%F{cyan}%n%f@%F{blue}%~%f %# '

# --- Load Aliases & Functions ---
[[ -f ~/.aliases ]] && source ~/.aliases
[[ -f ~/.shell_functions ]] && source ~/.shell_functions

# Append ~/.loca/bin to path
if [ -d "$HOME/.local/bin" ] ; then
    export PATH="$HOME/.local/bin:$PATH"
fi

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
