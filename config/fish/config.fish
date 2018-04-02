# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# Supress greeting
set fish_greeting ""

# Ensure terminal is 256colors
export TERM=xterm-256color

# Load my Aliases
source ~/.config/fish/aliases.fish

source ~/.config/fish/config.d/paths.fish
for filename in $HOME/.config/fish/config.d/*.fish
  source $filename
end
