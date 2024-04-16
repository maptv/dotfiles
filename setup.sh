# Zsh config
curl https://raw.githubusercontent.com/maptv/setup/main/.zshrc -o ~/.zshrc

# Vim config
curl https://raw.githubusercontent.com/maptv/setup/main/.vimrc -o ~/.vimrc
curl https://raw.githubusercontent.com/maptv/setup/main/all.snippets -o ~/.config/coc/ultisnips/all.snippets --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.vim/coc-settings.json --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.vim/coc-settings.json --create-dirs

# Neovim config
curl https://raw.githubusercontent.com/maptv/setup/main/init.vim -o ~/.config/nvim/init.vim --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/init.vim -o ~/.config/page/init.vim --create-dirs
echo 'let g:better_whitespace_enabled=0' >> ~/.config/page/init.vim
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.config/nvim/coc-settings.json --create-dirs
curl https://raw.githubusercontent.com/maptv/setup/main/coc-settings.json -o ~/.config/nvim/coc-settings.json --create-dirs

# powerlevel10k config
curl https://raw.githubusercontent.com/maptv/setup/main/.p10k.zsh -o ~/.p10k.zsh

# Git config
curl https://raw.githubusercontent.com/maptv/setup/main/.gitconfig -o ~/.gitconfig
curl https://raw.githubusercontent.com/maptv/setup/main/.gitignore -o ~/.gitignore
curl https://gist.githubusercontent.com/tekin/12500956bd56784728e490d8cef9cb81/raw/e474af61231687b0e1a4ec59d4becd97537ef6c0/.gitattributes -o ~/.gitattributes

## Set up btm
curl https://raw.githubusercontent.com/maptv/setup/main/bottom.toml -o ~/.config/bottom/bottom.toml --create-dirs

# Install brew
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to $PATH
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

brew bundle

## Install fzf key bindings and fuzzy completion
/home/linuxbrew/.linuxbrew/opt/fzf/install --completion --key-bindings --no-fish --no-update-rc

## Install fasd
git clone --depth 1 https://github.com/whjvenyl/fasd ~/whjvenyl/fasd && cd ~/whjvenyl/fasd && sudo make install && cd

## Install Ewka font
# git clone --depth 1 https://github.com/maptv/ewka ~/maptv/ewka && cd ~/whjvenyl/fasd && mkdir ~/.fonts && cp ~/maptv/ewka/nerd/* ~/.fonts && fc-cache -f -v
#
### Lunar Vim
curl https://raw.githubusercontent.com/maptv/setup/main/pip.conf -o ~/.config/pip/pip.conf --create-dirs

yes y | bash <(curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh)

curl https://raw.githubusercontent.com/maptv/setup/main/config.lua -o ~/.config/lvim/config.lua --create-dirs

### Install vim plugins
/opt/homebrew/bin/vim -c PlugInstall -c CocInstall -c wqa

/opt/homebrew/bin/nvim -c PlugInstall -c CocInstall -c wqa

~/.local/bin/lvim -c LvimSyncCorePlugins -c wqa
