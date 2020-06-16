# Create symlinks for dotfiles
# On a new checkout, it is necessary to also run :BundleInstall in vim
# After that, need to run make in t-complete
DIR="$( cd "$( dirname "$0" )" && pwd )"

set -x

ln -sf $DIR/i3 $HOME/.i3
ln -sf $DIR/vim $HOME/.vim
ln -sf $DIR/vim/vimrc $HOME/.vimrc
mkdir -p vim/backup
# Run bundle install in vim
git clone https://github.com/gmarik/vundle.git vim/bundle/vundle
vim +BundleInstall +qall
# Command-T install
#cd vim/bundle/Command-T/ruby/command-t
#ruby extconf.rb
#make
