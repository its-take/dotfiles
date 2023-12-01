# ---------------------------------------- #
#  _        _                          __  #
# | |_ __ _| | _____   ___ ___  _ __  / _| #
# | __/ _` | |/ / _ \ / __/ _ \| '_ \| |_  #
# | || (_| |   <  __/| (_| (_) | | | |  _| #
#  \__\__,_|_|\_\___(_)___\___/|_| |_|_|   #
#                                          #
# ---------------------------------------- #


# ZAP SECTION #

[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"


# PLUGIN SECTION

plug "$HOME/.config/zsh/.zshrc-aliases"
plug "zsh-users/zsh-autosuggestions"
plug "zap-zsh/supercharge"
plug "zap-zsh/exa"
plug "zettlrobert/simple-prompt"
plug "zsh-users/zsh-syntax-highlighting"


# HIGHLIGHT SECTION #

(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none


# COMPLETION SECTION #

autoload -Uz compinit
compinit
