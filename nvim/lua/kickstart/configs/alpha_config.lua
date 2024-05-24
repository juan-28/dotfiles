-- ~/.config/nvim/lua/kickstart/configs/alpha_config.lua
local M = {}

function M.configure()
  local alpha = require 'alpha'
  local dashboard = require 'alpha.themes.dashboard'

  -- Custom settings for the dashboard
  vim.api.nvim_set_hl(0, 'NeovimDashboardLogo1', { fg = '#0D47A1' }) -- Dark Blue
  vim.api.nvim_set_hl(0, 'NeovimDashboardLogo2', { fg = '#1976D2' }) -- Medium Blue
  vim.api.nvim_set_hl(0, 'NeovimDashboardLogo3', { fg = '#64B5F6' }) -- Light Blue
  vim.api.nvim_set_hl(0, 'NeovimDashboardLogo4', { fg = '#424242' }) -- Dark Gray
  vim.api.nvim_set_hl(0, 'NeovimDashboardLogo5', { fg = '#757575' }) -- Medium Gray
  vim.api.nvim_set_hl(0, 'NeovimDashboardLogo6', { fg = '#BDBDBD' }) -- Light Gray

  dashboard.section.header.type = 'group'
  dashboard.section.header.val = {
    {
      type = 'text',
      val = '   ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ',
      opts = { hl = 'NeovimDashboardLogo1', shrink_margin = false, position = 'center' },
    },
    {
      type = 'text',
      val = '   ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ',
      opts = { hl = 'NeovimDashboardLogo2', shrink_margin = false, position = 'center' },
    },
    {
      type = 'text',
      val = '   ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ',
      opts = { hl = 'NeovimDashboardLogo3', shrink_margin = false, position = 'center' },
    },
    {
      type = 'text',
      val = '   ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ',
      opts = { hl = 'NeovimDashboardLogo4', shrink_margin = false, position = 'center' },
    },
    {
      type = 'text',
      val = '   ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ',
      opts = { hl = 'NeovimDashboardLogo5', shrink_margin = false, position = 'center' },
    },
    {
      type = 'text',
      val = '   ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ',
      opts = { hl = 'NeovimDashboardLogo6', shrink_margin = false, position = 'center' },
    },
  }

  dashboard.section.buttons.val = {
    dashboard.button('n', ' ' .. ' New file', ':ene <BAR> startinsert <CR>'),
    dashboard.button('f', ' ' .. ' Find file', ':Telescope find_files <CR>'),
    dashboard.button('g', '󰷾 ' .. ' Find text', ':Telescope live_grep <CR>'),
    dashboard.button('b', ' ' .. ' File browser', ':NvimTreeFocus <CR>'),
    dashboard.button('r', '󰄉 ' .. ' Recent files', ':Telescope oldfiles <CR>'),
    dashboard.button('s', '󱔳 ' .. 'Restore Session for CWD ', '<cmd>SessionRestore<CR>'),
    dashboard.button('c', ' ' .. ' Config', ':e ~/.config/nvim/lua/custom/plugins/init.lua <CR>'),
    dashboard.button('l', '󰒲 ' .. ' Lazy', ':Lazy<CR>'),
    dashboard.button('q', ' ' .. ' Quit', ':qa<CR>'),
  }

  alpha.setup(dashboard.config)

  -- Update the footer after Neovim has fully started
  vim.api.nvim_create_autocmd('User', {
    callback = function()
      local stats = require('lazy').stats()
      local ms = math.floor(stats.startuptime * 100) / 100

      dashboard.section.footer.val = '⚡ Neovim loaded ' .. stats.loaded .. '/' .. stats.count .. ' plugins in ' .. ms .. 'ms'
      pcall(vim.cmd.AlphaRedraw)
    end,
  })
end

return M
