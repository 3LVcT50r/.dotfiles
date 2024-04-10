if status is-interactive
    # Commands to run in interactive sessions can go here
    alias antlr-cl="docker run -it --rm -v "$PWD:/antlr-dev" ubuntu_antlr"
    alias vim="nvim"
    alias l="ls -a"
end

set -q GHCUP_INSTALL_BASE_PREFIX[1]; or set GHCUP_INSTALL_BASE_PREFIX $HOME ; set -gx PATH $HOME/.cabal/bin /home/victor/.ghcup/bin $PATH # ghcup-env
