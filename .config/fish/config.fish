set fish_greeting

if status is-interactive
end

starship init fish | source

# asdf
source /opt/asdf-vm/asdf.fish

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH

# go
set --export GOPATH "$HOME/go"
set --export PATH $GOPATH/bin $PATH

# fly
set --export FLYCTL_INSTALL "$HOME/.fly"
set --export PATH $FLYCTL_INSTALL/bin $PATH

# aliases
alias sail='vendor/bin/sail'

# nix
any-nix-shell fish --info-right | source
direnv hook fish | source
