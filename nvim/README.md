### Plugins
- **NvChad Plugins**: This configuration uses NvChad, a modern Neovim configuration framework. The [`plugins/init.lua`](https://github.com/juan-28/.dotfiles/blob/main/nvim/lua/plugins/init.lua) file lists all the default plugins and their configurations.
- **Key Plugins**:
  - **`nvim-lua/plenary.nvim`**: A Lua utility module required by many other Neovim plugins.
  - **`NvChad/base46`**: Provides color schemes and theming capabilities.
  - **`NvChad/ui`**: Enhances the user interface elements of Neovim.
  - **`NvChad/nvterm`**: Integrates terminal functionality within Neovim.
  - **`nvim-treesitter/nvim-treesitter`**: For advanced syntax highlighting and language parsing.
  - **`lewis6991/gitsigns.nvim`**: Adds Git integration, showing git changes in the sign column.
  - **`williamboman/mason.nvim`**: Manages LSP servers, formatters, and linters.
  - **`neovim/nvim-lspconfig`**: Configures Neovim's built-in LSP.
  - **`hrsh7th/nvim-cmp`**: Autocompletion plugin with support for LSP and other sources.
  - **`nvim-tree/nvim-tree.lua`**: A file explorer for Neovim.
  - **`nvim-telescope/telescope.nvim`**: A highly extendable fuzzy finder over lists.

### Features
- **Lazy Loading**: Most plugins are set to lazy load, improving startup times.
- **Customization Options**: The configuration allows for extensive customization, including themes, UI elements, and plugin behavior.
- **LSP and Autocompletion**: Enhanced coding experience with integrated LSP support and autocompletion.
- **Git Integration**: Seamless Git operations within the editor.
- **Advanced Syntax Highlighting**: Leveraging Treesitter for more accurate and visually appealing code highlighting.

This configuration provides a robust, feature-rich environment for coding and text editing in Neovim, leveraging the power of various plugins and the NvChad framework.
