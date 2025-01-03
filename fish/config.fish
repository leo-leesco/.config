zoxide init --cmd cd fish | source

set -x EDITOR 'nvim'
set LESSPIPE (which src-hilite-lesspipe.sh)
set -x LESSOPEN "| $LESSPIPE %s"
set -x LESS ' -R '

set -x CLICOLOR 1
# BEGIN opam configuration
# This is useful if you're using opam as it adds:
#   - the correct directories to the PATH
#   - auto-completion for the opam binary
# This section can be safely removed at any time if needed.
test -r '~/.opam/opam-init/init.fish' && source '~/.opam/opam-init/init.fish' > /dev/null 2> /dev/null; or true
# END opam configuration

starship init fish | source
