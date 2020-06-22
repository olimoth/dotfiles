dotdir=~/dotfiles
backupdir=~/dotfiles_backup
dotfiles=".tmux.conf .bashrc .vimrc"

echo "creating backup directory at $backupdir"
mkdir $backupdir

echo "moving old dotfiles and creating symlinks"
pushd $dotdir
for dotfile in $dotfiles; do
    echo "backing up ~/$dotfile"
    mv ~/$dotfile $backupdir/
    echo "creating symlink for $dotdir/$dotfile in ~/$dotfile"
    ln -s $dotdir/$dotfile ~/$dotfile
done
popd

echo "symlinking vim colourscheme"
mv ~/.vim/colors/monokai.vim $backupdir/
mkdir -p ~/.vim/colors
ln -s $dotdir/monokai.vim ~/.vim/colors/monokai.vim
ln -s $dotdir/distinguished.vim ~/.vim/colors/distinguished.vim
