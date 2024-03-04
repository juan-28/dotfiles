# Neovim Python Config (Custom NvChad)

| ![Screenshot 1](https://github.com/juan-28/.dotfiles/assets/55826125/429a9dc1-4d5a-4bf7-bf1e-55ebcdd227fb) | ![Screenshot 2](https://github.com/juan-28/.dotfiles/assets/55826125/315a875c-5272-496e-842e-80932e9d2aea) |
|:--:|:--:|
| Custom Neovim Startup Dashboard | Telescope Files and Live Grep |

| ![Screenshot 3](https://github.com/juan-28/.dotfiles/assets/55826125/4bf072da-ffdf-493c-986c-ab5cb41b129b) | ![Screenshot 4](https://github.com/juan-28/.dotfiles/assets/55826125/dcf074ff-ac59-4f28-a1c1-bf949081923f) |
|:--:|:--:|
| Code editor with syntax highlighting and LSP features (Python) | Markdown Preview for Notetaking |

---

### There is more!

---

# Neovim Configuration Setup

Guide to install and set up a simple python Neovim configuration from the `juan-28/.dotfiles` repository. Please follow these steps carefully!

You can [click here](https://github.com/juan-28/.dotfiles/blob/main/nvim/README.md) to see more details on the features and plugins that come with this nvim configuration.

## Prerequisites

- Git (for cloning the repository)
- Neovim installed on your machine (v0.9.4)
- Any nerd font

## Setup Instructions

### 1. Backup Existing Neovim Configuration

Before proceeding, backup your existing Neovim configuration if you have one. Can be done using the following command:

```bash
mv ~/.config/nvim ~/.config/nvim_backup
#moves and renames as a backup
```
### 2. Clone the Repository

Clone the `.dotfiles` repository to your local machine using Git:

```bash
git clone https://github.com/juan-28/.dotfiles.git
```

### 3. Copy the `/nvim` Folder

After cloning the repository, copy the `/nvim` folder to your `~/.config` directory. From the root of the cloned directory, use this command:

```bash
cp -r nvim ~/.config/
```

This will place the Neovim configuration in the correct location.

### 4. Install Language Server Requirements

For language support, specifically Python, you need to install the language server. Open Neovim and run:

```vim
:TSInstall python
```

### 5. Check Plugin Statuses

To see the extra plugins installed and their statuses, open Neovim, and type:

```vim
:Lazy
```

This command will display the status of each plugin

### 7. Adjustments and Customization

Feel free to make any necessary adjustments or customization to suit your preferences or to resolve any system compatibility issues.

## Additional Notes

- This process will replace your current Neovim configuration with the one from the `.dotfiles`.
- Ensure you've backed up your existing configuration before proceeding.

## Troubleshooting

If you encounter any issues during setup, please feel free to open an issue in the repository, and I'll do my best to assist you.

## Contribution

Your contributions to improve this configuration are welcome. Please feel free to fork the repository, make your changes, and submit a pull request.

---

Thank you for using my Neovim configuration. Happy coding!
