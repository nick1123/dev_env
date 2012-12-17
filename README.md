     mkdir src
     cd src
     git clone git@github.com:nick1123/dev_env.git
     mv ~/.bashrc ~/.bashrc_bak # Ignore error: No such file or directory 
     ln -s ~/src/dev_env/lib/.bashrc ~/.bashrc
     source ~/.bashrc
     ln -s ~/src/dev_env/lib/.gitconfig ~/.gitconfig
