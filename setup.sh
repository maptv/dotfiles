git config --global user.name "Martin Laptev"
git config --global user.email "129316885+maptv@users.noreply.github.com"

# Zsh
curl https://raw.githubusercontent.com/maptv/setup/main/.zshrc -o ~/.zshrc

# Vim
curl https://raw.githubusercontent.com/maptv/setup/main/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/maptv/setup/main/all.snippets -o ~/.config/coc/ultisnips/all.snippets --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.vim/coc-settings.json --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.vim/coc-settings.json --create-dirs

# Neovim
curl https://raw.githubusercontent.com/maptv/setup/main/init.vim -o ~/.config/nvim/init.vim --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/init.vim -o ~/.config/page/init.vim --create-dirs
echo 'let g:better_whitespace_enabled=0' >> ~/.config/page/init.vim
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.config/nvim/coc-settings.json --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.config/nvim/coc-settings.json --create-dirs

# powerlevel10k
curl https://raw.githubusercontent.com/maptv/setup/main/.p10k.zsh -o ~/.p10k.zsh

# Git
curl https://raw.githubusercontent.com/maptv/setup/main/.gitconfig -o ~/.gitconfig
curl https://raw.githubusercontent.com/maptv/setup/main/.gitignore -o ~/.gitignore
curl https://gist.githubusercontent.com/tekin/12500956bd56784728e490d8cef9cb81/raw/e474af61231687b0e1a4ec59d4becd97537ef6c0/.gitattributes -o ~/.gitattributes

## btm
curl https://raw.githubusercontent.com/maptv/setup/main/bottom.toml -o ~/.config/bottom/bottom.toml --create-dirs

# brew
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install everything in Brewfile
brew bundle

## Install fzf key bindings and fuzzy completion
/home/linuxbrew/.linuxbrew/opt/fzf/install --completion --key-bindings --no-fish --no-update-rc

## Install fasd
git clone --depth 1 https://github.com/whjvenyl/fasd ~/whjvenyl/fasd && cd ~/whjvenyl/fasd && sudo make install && cd

### Lunar Vim
curl https://raw.githubusercontent.com/maptv/setup/main/config.lua -o ~/.config/lvim/config.lua --create-dirs
yes n | /bin/bash -c "$(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)"

## Install Ewka font
git clone --depth 1 https://github.com/maptv/ewka ~/maptv/ewka && cd ~/whjvenyl/fasd && mkdir ~/.fonts && cp ~/maptv/ewka/nerd/* ~/.fonts && fc-cache -f -v

pip install neovim amazon-codewhisperer-jupyterlab-ext
