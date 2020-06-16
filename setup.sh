# Create symlinks for dotfiles
# On a new checkout, it is necessary to also run :BundleInstall in vim
# After that, need to run make in t-complete
DIR="$( cd "$( dirname "$0" )" && pwd )"

set -x

ln -sf $DIR/bash_profile $HOME/.bash_profile
ln -sf $DIR/bashrc $HOME/.bashrc
ln -sf $DIR/bashrc_davidb $HOME/.bashrc_davidb
ln -sf $DIR/bash_aliases $HOME/.bash_aliases
ln -sf $DIR/latexmkrc $HOME/.latexmkrc
ln -sf $DIR/fonts $HOME/.fonts
ln -sf $DIR/terminfo $HOME/.terminfo
ln -sf $DIR/tmux.conf $HOME/.tmux.conf
ln -sf $DIR/Xresources $HOME/.Xresources
#ln -sf $DIR/i3 $HOME/.i3
#ln -sf $DIR/vim $HOME/.vim
#ln -sf $DIR/vim/vimrc $HOME/.vimrc
#mkdir -p vim/backup
# Run bundle install in vim
#git clone https://github.com/gmarik/vundle.git vim/bundle/vundle
#vim +BundleInstall +qall
# Command-T install
#cd vim/bundle/Command-T/ruby/command-t
#ruby extconf.rb
#make
