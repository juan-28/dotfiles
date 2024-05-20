#!/bin/bash

# Function to check if a package is installed
check_install() {
    if ! dpkg -l | grep -q $1; then
        echo "Installing $1..."
        sudo apt install -y $1
    else
        echo "$1 is already installed."
    fi
}

# Update package lists
echo "Updating package lists..."
sudo apt update

# Install essential packages
check_install git
check_install curl
check_install zsh
check_install tmux
check_install neovim
check_install alacritty

# Clone your dotfiles repository if not already present
if [ ! -d "$HOME/dotfiles" ]; then
    echo "Cloning dotfiles repository..."
    git clone https://github.com/yourusername/dotfiles.git $HOME/dotfiles
else
    echo "Dotfiles repository already exists."
fi

# Create symlinks for configuration files
echo "Creating symlinks for configuration files..."
ln -sf $HOME/dotfiles/alacritty ~/.config/alacritty
ln -sf $HOME/dotfiles/nvim ~/.config/nvim
ln -sf $HOME/dotfiles/tmux/.tmux.conf ~/.tmux.conf
ln -sf $HOME/dotfiles/zsh/.zshrc ~/.zshrc

# Install zoxide
if ! command -v zoxide &> /dev/null; then
    echo "Installing zoxide..."
    curl -sS https://webinstall.dev/zoxide | bash
else
    echo "zoxide is already installed."
fi

# Install Oh My Zsh
if [ ! -d "$HOME/.oh-my-zsh" ]; then
    echo "Installing Oh My Zsh..."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Oh My Zsh is already installed."
fi

# Set zsh as the default shell
echo "Changing the default shell to zsh..."
chsh -s $(which zsh)

# Install any necessary plugins or configurations
if [ ! -d "$HOME/.tmux/plugins/tpm" ]; then
    echo "Installing tmux plugin manager..."
    git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
else
    echo "Tmux plugin manager is already installed."
fi

if [ ! -f "$HOME/.local/share/nvim/site/autoload/plug.vim" ]; then
    echo "Installing nvim plugin manager..."
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
        https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
else
    echo "Nvim plugin manager is already installed."
fi

# Set up Neovim plugins
echo "Setting up Neovim plugins..."
nvim +PlugInstall +qall

# Additional setup steps if needed
echo "Running additional setup tasks..."

# Source the .zshrc file
echo "Sourcing .zshrc to apply new configurations..."
source ~/.zshrc

echo "Setup complete!"
