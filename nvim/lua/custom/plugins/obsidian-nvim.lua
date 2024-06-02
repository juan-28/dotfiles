return {
  'epwalsh/obsidian.nvim',
  version = '*', -- recommended, use latest release instead of latest commit
  lazy = true,
  -- ft = 'markdown',
  event = {
    'BufReadPre ' .. vim.fn.expand '/Users/pranavsukumaran/Documents/Obsidian Vault' .. '/**.md',
    'BufNewFile ' .. vim.fn.expand '/Users/pranavsukumaran/Documents/Obsidian Vault' .. '/**.md',
    'BufReadPre ' .. vim.fn.expand '/Users/pranavsukumaran/Documents/Obsidian Vault' .. '/**.md',
    'BufNewFile ' .. vim.fn.expand '/Users/pranavsukumaran/Documents/Obsidian Vault' .. '/**.md',
  },
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
  --   "BufReadPre path/to/my-vault/**.md",
  --   "BufNewFile path/to/my-vault/**.md",
  -- },
  dependencies = {
    -- Required.
    'nvim-lua/plenary.nvim',
    'hrsh7th/nvim-cmp',
    'nvim-telescope/telescope.nvim',
    'nvim-treesitter',

    -- see below for full list of optional dependencies 👇
  },
  opts = {
    workspaces = {
      {
        name = 'personal',
        path = '/Users/pranavsukumaran/Documents/Obsidian Vault/Neovim/',
      },
      {
        name = 'work',
        path = '/Users/pranavsukumaran/Documents/Obsidian Vault/Cloud-Practioner-CLF_C02/',
      },
    },
    auto_create_properties = false,

    -- see below for full list of options 👇
  },
}
