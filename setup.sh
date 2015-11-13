dir=~/dotfiles
dotfiles="gitconfig vimrc tmux.conf vim bash_aliases"
declare -A config_files=( [flake8]="~/.config/" )

cd $dir
for file in $dotfiles
do
	rm -rf ~/.file
	ln -s $dir/$file ~/.$file
done

for file in "${!config_files[@]}"
do
    mkdir -p ${config_files[$file]}
    ln -s $dir/$file ${config_files[$file]}/${file}
done

echo "Setting up your bashrc.."
cat bashrc_add >> ~/.bashrc

echo "Done!!"
