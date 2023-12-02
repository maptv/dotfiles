# Install brew
echo | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Add brew to $PATH
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/codespace/.bashrc

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Shell programs needed for aliases
## Install fzf (fuzzy finder)
## Install bat and exa (for fzf file preview)
## Install fasd and fd (to provide inputs for fzf)
## Install xpdf (e.g. pdftotext - for fzf PDF file preview)
## Install vim and neovim
# Zsh theme: powerlevel10k
# Zsh plugins: zsh-autosuggestions and zsh-syntax-highlighting
brew bundle

# Make zsh the default shell
sudo chsh -s /home/linuxbrew/.linuxbrew/bin/zsh

## Install fzf key bindings and fuzzy completion
/home/linuxbrew/.linuxbrew/opt/fzf/install --completion --key-bindings --no-fish --no-update-rc

# Python

## Install nodejs (for coc.vim) and python packages (for nvim-R and ncm-R):
### https://github.com/jalvesaq/Nvim-R/blob/main/doc/Nvim-R.txt#L1953
mamba install -yc conda-forge nodejs neovim

#### I don't use jupyterlab-git extension, I only demo it in classes
##### jupyter labextension install @jupyterlab/git
##### jupyter serverextension enable --py jupyterlab_git

mamba create -yc conda-forge -n py python=3.8 joblib jupyterlab seaborn numpy pandas scikit-learn scipy

##### jupyter labextension install jupyterlab_vim

## Set up jupyterlab-github extension
#### jupyter labextension install @jupyterlab/github
#### pip install jupyterlab_github
##### Provide access token to GitHub extension
##### https://github.com/jupyterlab/jupyterlab-github#2-getting-your-credentials-from-github

### Install and symlink macvim (brew installed macvim conflicts with brew installed vim)
##### ln -s $HOMEBREW_PREFIX/Cellar/macvim/**/MacVim.app/ /Applications/MacVim.app
mamba init zsh
