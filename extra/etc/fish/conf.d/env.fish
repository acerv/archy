set -gx EDITOR nvim
fish_add_path -g -p $HOME/.local/bin $HOME/.cargo/bin

status is-interactive; or return
set -g fish_greeting
