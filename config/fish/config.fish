# Supress greeting
set fish_greeting ""

# Ensure terminal is 256colors
export TERM=xterm-256color

# Load my Aliases
source ~/.config/fish/aliases.fish

for filename in $HOME/.config/fish/config.d/*.fish
  source $filename
end
