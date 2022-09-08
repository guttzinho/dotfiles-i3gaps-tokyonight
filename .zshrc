# Load Antigen
source "/home/gutt/.antigen.zsh"

# Load Antigen configurations
antigen init ~/.antigenrc

# Load oh-my-zsh library
antigen use oh-my-zsh

# Load bundles from the default repo (oh-my-zsh)
antigen bundle git
antigen bundle command-not-found
antigen bundle docker
antigen bundle sudo

# Load bundles from external repos
antigen bundle zsh-users/zsh-completions
antigen bundle zsh-users/zsh-autosuggestions
antigen bundle zsh-users/zsh-syntax-highlighting

# Select theme
#antigen theme denysdovhan/spaceship-prompt
source ~/Documents/zsh-themes/headline.zsh-theme

# Tell Antigen that you're done
antigen apply

# Aliases

# configs
alias neorc='edit ~/.config/neofetch/config.conf'
alias i3rc="edit ~/.config/i3/config"
alias picomrc="edit ~/.config/picom/picom.conf"
alias polyrc="edit ~/.config/polybar/config.ini"
alias kittyrc="edit ~/.config/kitty/kitty.conf"
alias zshrc="edit ~/.zshrc"

# random // utilities
alias clock="tty-clock -c -s -d -B -D"
alias dnf="sudo dnf"
alias update="~/Documents/scripts/update"
alias edit="nvim"
alias c="clear"
alias e="exit"
alias neo="neofetch"
alias ls="lsd"
alias lsa="lsd -a"

# power
alias jesus="reboot"
alias die="shutdown now"

# devour
alias imv="devour imv"
alias zathura="devour zathura"
alias vlc="devour vlc"

# Things
export EDITOR="/usr/bin/nvim"
export VISUAL="/usr/bin/nvim"


# Neofetch at start
neofetch
