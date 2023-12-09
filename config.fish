if status is-interactive
    # Commands to run in interactive sessions can go here
    source /home/alex/spack/share/spack/setup-env.fish
    set PATH $PATH /home/alex/.cargo/bin
    set BAT_THEME "Coldark-Dark"
    set GIT_EDITOR vim
    set EDITOR vim
    alias cat=bat
    alias ls=lsd
    starship init fish | source
    fortune | cowsay -f tux
end
