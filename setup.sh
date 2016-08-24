

# mv .zprofile ~/git/dotfiles/.
# mv .zshrc ~/git/dotfiles/.
# mv .vim ~/git/dotfiles/.
# mv .vimrc ~/git/dotfiles/. 

cd $HOME
ln -sf ~/git/dotfiles/.zprofile .zprofile
ln -sf ~/git/dotfiles/.zshrc .zshrc
ln -sf ~/git/dotfiles/.vim .vim
ln -sf ~/git/dotfiles/.vimrc .vimrc
ln -sf ~/git/dotfiles/.vscode ~/.vscode
