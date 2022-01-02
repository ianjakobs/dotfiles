export ZSH=/Users/ianjakobs/.oh-my-zsh



################################################################################
# Zsh                                                                          #
################################################################################

# Plugins
plugins=(
    git
    vi-mode
)

# Settings
DISABLE_AUTO_TITLE='true'           # Disable auto-setting the terminal title
ZSH_THEME='ianjakobs'                  # Set the terminal theme



################################################################################
# Aliases                                                                      #
################################################################################

# Go to the Development directory
alias dev='cd ~/Development'

# Direct access to the Dotfiles repository
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME'

# Update all apps, tools, and plugins
alias update='~/src/update.sh'

# Vim-style exit
alias :q='exit'

# JD navigation
function cd() {
    # If arg is "AC.ID.NN" go to NN folder
    if [[ $1 =~ '^[0-9]{2}\.[0-9]{2}\.[0-9]{2}$' ]]; then
        builtin cd ~/Documents/*/*/*/${1}*/

    # If arg is "AC.ID" go to ID folder
    elif [[ $1 =~ '^[0-9]{2}\.[0-9]{2}$' ]]; then
        builtin cd ~/Documents/*/*/${1}*/

    # If arg is "AC-AC" go to Area folder
    elif [[ $1 =~ '^[0-9]{2}-[0-9]{2}$' ]]; then
        builtin cd ~/Documents/${1}*/; ls -lh

    # If arg is "AC" go to Category folder
    elif [[ $1 =~ '^[0-9]{2}$' ]]; then
        builtin cd ~/Documents/*/${1}*/; ls -lh

    # Otherwise call `cd` normally
    else
        builtin cd "$@"
    fi
}



################################################################################
# Export                                                                       #
################################################################################

# fzf
export FZF_COMPLETION_OPTS='--preview "cat {}"'     # Add a preview window
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_DEFAULT_COMMAND='ag --hidden -g ""'      # Set the default source
export FZF_DEFAULT_OPTS='--layout=reverse'          # Top to bottom

# Terminal
export CLICOLOR=1                                   # Turn colors on
export EDITOR=/opt/homebrew/bin/vim                 # Set the default editor
export KEYTIMEOUT=1                                 # Kill the lag
export LSCOLORS=GxFxCxDxBxegedabagaced              # Customize the colors
export TERM=xterm-256color-italic                   # Enable italics
export VISUAL="$EDITOR"                             # Set the default editor



################################################################################
# Source                                                                       #
################################################################################

source $ZSH/oh-my-zsh.sh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
