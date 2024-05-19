#!/bin/bash

# Update and install dependencies
echo "Updating package lists..."
sudo apt update

echo "Installing essential packages..."
sudo apt install -y git curl zsh tmux neovim alacritty

# Clone your dotfiles repository if not already present
if [ ! -d "$HOME/dotfiles" ]; then
    echo "Cloning dotfiles repository..."
    git clone https://github.com/yourusername/dotfiles.git $HOME/dotfiles
fi

# Create symlinks for configuration files
echo "Creating symlinks for configuration files..."
ln -sf $HOME/dotfiles/alacritty ~/.config/alacritty
ln -sf $HOME/dotfiles/nvim ~/.config/nvim
ln -sf $HOME/dotfiles/tmux/.tmux.conf ~/.tmux.conf

# Install zoxide
echo "Installing zoxide..."
curl -sS https://webinstall.dev/zoxide | bash

# Install Oh My Zsh
echo "Installing Oh My Zsh..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Set zsh as the default shell
echo "Changing the default shell to zsh..."
chsh -s $(which zsh)

# Install any necessary plugins or configurations
echo "Installing tmux plugin manager..."
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

echo "Installing nvim plugin manager..."
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

echo "Setting up Neovim plugins..."
nvim +PlugInstall +qall

# Additional setup steps if needed
echo "Running additional setup tasks..."

echo "Setup complete!"
