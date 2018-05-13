# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish
set -gx SHELL /usr/local/bin/fish # Add this line. Path of fish depends on your environment.
thefuck --alias | source

# Load virtualfish
eval (python3 -m virtualfish compat_aliases auto_activation)

alias grr="fuck"

set GOPATH /usr/lib/go-1.9
set PATH $GOPATH/bin $PATH
