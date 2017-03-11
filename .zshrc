export ZSH=/Users/ianjakobs/.oh-my-zsh



####################################
# zsh
####################################

# Plugins
plugins=(git nyan zsh-syntax-highlighting)

# Settings
ZSH_THEME='ianjakobs'                  # Set the terminal theme
ENABLE_CORRECTION='true'            # Enable command auto-correction
DISABLE_AUTO_TITLE='true'           # Disable auto-setting the terminal title



####################################
# Aliases
####################################

# Go to the Development directory
alias dev='cd ~/Development'

# Direct access to the Dotfiles repository
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Display a random quote with a random animal with pretty colors
function surprise() {
    fortune -a | cowsay -n -f $(ls /usr/local/Cellar/cowsay/3.04/share/cows/*.cow | gshuf -n1) | lolcat
}



####################################
# Export
####################################

# Paths
export PATH=/usr/local/bin:$PATH
export PATH=/usr/local/sbin:$PATH
export PATH=~/.composer/vendor/bin:$PATH

# Terminal
export EDITOR=/usr/local/bin/vim    # Set the default editor
export VISUAL="$EDITOR"             # Set the default editor
export CLICOLOR=1                   # Turn colors on
export LSCOLORS=GxFxCxDxBxegedabagaced  # Customize the colors



####################################
# Source
####################################

source $ZSH/oh-my-zsh.sh
