# Create symlinks for dotfiles
# On a new checkout, it is necessary to also run :BundleInstall in vim
# After that, need to run make in t-complete
ln -sf latexmkrc ~/.latexmkrc
ln -sf fonts ~/.fonts
ln -sf tmux.conf ~/.tmux.conf
ln -sf Xdefaults ~/.Xdefaults
ln -sf vim ~/.vim
ln -sf vim/vimrc ~/.vimrc
mkdir -p vim/backup
# Run bundle install in vim
vim +BundleInstall +qall
# Command-T install
cd vim/bundle/Command-T/ruby/command-t
ruby extconf.rb
make
