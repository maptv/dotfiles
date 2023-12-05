# Zsh config
curl https://raw.githubusercontent.com/maptv/setup/main/.zshrc -o ~/.zshrc

# Vim config
curl https://raw.githubusercontent.com/maptv/setup/main/.vimrc -o ~/.vimrc

# powerlevel10k config
curl https://raw.githubusercontent.com/maptv/setup/main/.p10k.zsh -o ~/.p10k.zsh

# Neovim config
curl https://raw.githubusercontent.com/maptv/setup/main/init.vim -o ~/.config/nvim/init.vim --create-dirs

# Install brew
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew bundle

## Install fzf key bindings and fuzzy completion
/home/linuxbrew/.linuxbrew/opt/fzf/install --completion --key-bindings --no-fish --no-update-rc

code --install-extension asvetliakov.vscode-neovim
code --install-extension ms-python.black-formatter
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension quarto.quarto
code --install-extension REditorSupport.r
code --install-extension TabNine.tabnine-vscode
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension eamodio.gitlens
code --install-extension vscodevim.vim
code --disable-extension vscodevim.vim
code --install-extension jonsmithers.open-in-vim

git clone --depth 1 https://github.com/whjvenyl/fasd.git ~/whjvenyl/fasd && cd ~/whjvenyl/fasd && sudo make install && cd
