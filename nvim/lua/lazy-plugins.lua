require('lazy').setup({
  require 'kickstart/plugins/comment-nvim',
  require 'kickstart/plugins/vim-sleuth',
  require 'kickstart/plugins/gitsigns',
  require 'kickstart/plugins/which-key',
  require 'kickstart/plugins/telescope',
  require 'kickstart/plugins/lspconfig',
  require 'kickstart/plugins/conform',
  require 'kickstart/plugins/cmp',
  require 'kickstart/plugins/tokyonight',
  require 'kickstart/plugins/todo-comments',
  require 'kickstart/plugins/mini',
  require 'kickstart/plugins/treesitter',
  require 'kickstart/plugins/indent_line',
  require 'kickstart/plugins/autopairs',
  require 'kickstart/plugins/alpha',
  require 'kickstart/plugins/auto-session',
  require 'kickstart/plugins/bufferline',
  require 'kickstart/plugins/codesnap',
  require 'kickstart/plugins/dressing',
  require 'kickstart/plugins/lazygit',
  require 'kickstart/plugins/lualine',
  require 'kickstart/plugins/luarocks_neorg',
  require 'kickstart/plugins/markdown',
  require 'kickstart/plugins/nvim-tree',
  require 'kickstart/plugins/vim-maximizer',
  require 'kickstart/plugins/vimtex',
  require 'kickstart/plugins/vim-tmux',

  -- { import = 'custom.plugins' },
}, {
  ui = {
    icons = {},
  },
})

-- vim: ts=2 sts=2 sw=2 et

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system {
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  }
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup('josean.plugins', {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
