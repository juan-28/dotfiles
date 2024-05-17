-- You can add your own plugins here or in other files in this directory!

-- This is the main entry point for your Neovim configuration
-- Import plugin configurations
-- lua/custom/plugins/init.lua
return {
  require 'custom.plugins.dashboard',
  require 'custom.plugins.markdown',
  require 'custom.plugins.navigation',
  --  require 'custom.plugins.luarocks_neorg',
}
