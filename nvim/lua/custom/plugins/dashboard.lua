return {

  {
    'goolord/alpha-nvim',
    lazy = true,
    event = 'VimEnter',
    config = function()
      -- Define the configure function
      local function configure()
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

          -- Header customization
        }

        dashboard.section.buttons.val = {

          dashboard.button('n', ' ' .. ' New file', ':ene <BAR> startinsert <CR>'),
          dashboard.button('f', ' ' .. ' Find file', ':Telescope find_files <CR>'),
          dashboard.button('g', '󰷾 ' .. ' Find text', ':Telescope live_grep <CR>'),
          dashboard.button('b', ' ' .. ' File browser', ':NvimTreeFocus <CR>'),
          dashboard.button('r', '󰄉 ' .. ' Recent files', ':Telescope oldfiles <CR>'),
          dashboard.button('c', ' ' .. ' Config', ':e ~/.config/nvim/lua/custom/plugins/init.lua <CR>'),
          dashboard.button('l', '󰒲 ' .. ' Lazy', ':Lazy<CR>'),
          dashboard.button('q', ' ' .. ' Quit', ':qa<CR>'),
          -- Buttons customization
        }

        return dashboard.config
      end

      -- Setup alpha with the configure function
      require('alpha').setup(configure())
    end,
  },
}
