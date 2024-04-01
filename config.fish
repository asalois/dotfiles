if status is-interactive
  # Commands to run in interactive sessions can go here
  set PATH  $PATH "$HOME/.cargo/bin"
  set BAT_THEME "Coldark-Dark"
  set EDITOR vim
  set GIT_EDITOR vim
  starship init fish | source
  fortune | cowsay -f tux
  alias ls=lsd
  alias la="lsd -alh"
  alias cat=batcat
  alias pts=phoronix-test-suite
  alias update="sudo apt update && sudo apt upgrade && sudo apt autoremove"
  alias tempest="ssh v16b915@tempest-login.msu.montana.edu"
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

