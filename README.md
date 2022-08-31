# dotfiles

```
ln -s ~/dotfiles/ideavimrc ~/.ideavimrc
ln -s ~/dotfiles/vimrc ~/.vimrc
ln -s ~/dotfiles/zshrc ~/.zshrc
ln -s ~/dotfiles/p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/fzf.zsh ~/.fzf.zsh
ln -s ~/dotfiles/tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/gitconfig ~/.gitconfig
ln -s ~/dotfiles/gitignore ~/.gitignore
```

Install Vim plug:
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

Install Oh My Zsh:
```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```
Install Powerlevel10k (Oh My Zsh theme):
```
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
```
Install Zsh autosuggestions:
```
brew install zsh-autosuggestions
```
brew install fzf:
```
brew install fzf
$(brew --prefix)/opt/fzf/install
```
