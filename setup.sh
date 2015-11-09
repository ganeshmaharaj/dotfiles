dir=~/dotfiles
dotfiles="gitconfig vimrc tmux.conf vim bash_aliases"

cd $dir
for file in $dotfiles
do
	rm -rf ~/.file
	ln -s $dir/$file ~/.$file
done

echo "Setting up your bashrc.."
cat bashrc_add >> ~/.bashrc

echo "Done!!"
