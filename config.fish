if status is-interactive
    # Commands to run in interactive sessions can go here
    #source /home/alex/spack/share/spack/setup-env.fish
    set PATH $PATH /home/deb_win/.cargo/bin
    set BAT_THEME "Coldark-Dark"
    set GIT_EDITOR vim
    set EDITOR vim
    alias cat=batcat
    alias ls=lsd
    alias update="sudo apt update && sudo apt upgrade && sudo apt autoremove"
    alias tempest="ssh v16b915@tempest-login.msu.montana.edu"
    starship init fish | source
    fortune | cowsay -f tux
end

