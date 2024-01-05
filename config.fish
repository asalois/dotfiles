if status is-interactive
    # Commands to run in interactive sessions can go here
    source /home/alex/spack/share/spack/setup-env.fish
    set PATH $PATH /home/alex/.cargo/bin
    set PATH /usr/lib/go-1.21/bin $PATH
    set BAT_THEME "Coldark-Dark"
    set GIT_EDITOR vim
    set EDITOR vim
    alias update="sudo apt update && sudo apt upgrade && sudo apt autoremove && flatpak update"
    alias tempest="ssh v16b915@tempest-login.msu.montana.edu"
    alias pts=phoronix-test-suite
    alias cat=batcat
    alias ls=lsd
    starship init fish | source
end

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/alex/miniforge3/bin/conda
    eval /home/alex/miniforge3/bin/conda "shell.fish" "hook" $argv | source
end

if test -f "/home/alex/miniforge3/etc/fish/conf.d/mamba.fish"
    source "/home/alex/miniforge3/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<


