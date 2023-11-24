if status is-interactive
    # Commands to run in interactive sessions can go here
end

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
set -gx MAMBA_EXE "/home/alex/.local/bin/micromamba"
set -gx MAMBA_ROOT_PREFIX "/home/alex/micromamba"
$MAMBA_EXE shell hook --shell fish --root-prefix $MAMBA_ROOT_PREFIX | source
# <<< mamba initialize <<<

source /home/alex/spack/share/spack/setup-env.fish
set PATH $PATH /home/alex/.cargo/bin
set BAT_THEME "Coldark-Dark"
set GIT_EDITOR micro
set EDITOR micro
alias cat=batcat
alias ls=lsd
starship init fish | source
