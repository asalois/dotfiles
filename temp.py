import os

# List of tuples for source and target files
files_links_dirs = [
    ("dot_zshrc", ".zshrc", ""),
    ("dot_bashrc", ".bashrc", ""),
    ("dot_vimrc", ".vimrc", ""),
    ("tmux.conf", ".tmux.conf", ""),
    ("dot_gitconfig", ".gitconfig", ""),
    ("ssh_config", "config", ".ssh"),
    ("azu.vim", "azu.vim", ".vim/colors"),
    ("ayu.vim", "ayu.vim", ".vim/colors"),
    ("iceberg.vim", "iceberg.vim", ".vim/colors"),
    ("starship.toml", "starship.toml", ".config"),
    ("ghostty_config", "config", ".config/ghostty")
]

def link_file(source, destination):
   # Create a symbolic link from source to destination.
    if os.path.exists(destination):
        print(f"Warning: {destination} already exists.\n")
        return
       #response = input(f"Do you want to remove {destination}? [y/N]: ").strip().lower()
        #if response == 'y':
        #    os.remove(destination)
        #else:
        #    return

    try:
        os.symlink(source, destination)
        print(f"Linked: {source} -> {destination}\n")
    except Exception as e:
        print(f"Failed to link {source} to {destination}: {e}\n")

def deploy(dotfiles_dir):
    #  loop over all the files
    for file, link, target_dir in files_links_dirs:
        print(file, link, target_dir)
        source = os.path.join(dotfiles_dir, file)
        if not os.path.exists(source):
            print(f"The source {source}  does not exist \n")
        else:
            if not target_dir:
                link = os.path.join(home_dir, link)
                link_file(source, link)
            else:
                link = os.path.join(home_dir, target_dir, link)
                link_file(source, link)

    print("Deployment complete. Your dotfiles have been updated.")

if __name__ == "__main__":
    # Find dotfile dir
    home_dir = os.path.expanduser('~')
    dotfiles_dir = os.path.join(home_dir, "dotfiles")

    # Check if the dotfiles_dir exists
    if os.path.exists(dotfiles_dir):
        print(f"Dotfiles directory {dotfiles_dir} found. Proceeding with deployment... \n" )
        deploy(dotfiles_dir)
    else:
        print(f"Dotfiles directory {dotfiles_dir} NOT found. \n" )