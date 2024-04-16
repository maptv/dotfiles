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

git clone --depth 1 https://github.com/whjvenyl/fasd.git ~/whjvenyl/fasd && cd ~/whjvenyl/fasd && sudo make install && cd
