return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local lualine = require 'lualine'
    local lazy_status = require 'lazy.status' -- to configure lazy pending updates count

    local colors = {
      blue = '#65D1FF',
      green = '#3EFFDC',
      violet = '#FF61EF',
      yellow = '#FFDA7B',
      red = '#FF4A4A',
      fg = '#c3ccdc',
      bg = nil,
      inactive_bg = '#2c3043',
      inner_bg = '#352a4a',
    }

    local my_lualine_theme = {
      normal = {
        a = { fg = colors.blue, bg = colors.inner_bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.inner_bg },
        c = { fg = colors.fg, bg = colors.inner_bg },
      },
      insert = {
        a = { fg = colors.green, bg = colors.inner_bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.inner_bg },
        c = { fg = colors.fg, bg = colors.inner_bg },
      },
      visual = {
        a = { fg = colors.violet, bg = colors.inner_bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.inner_bg },
        c = { fg = colors.fg, bg = colors.inner_bg },
      },
      command = {
        a = { fg = colors.yellow, bg = colors.inner_bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.inner_bg },
        c = { fg = colors.fg, bg = colors.inner_bg },
      },
      replace = {
        a = { fg = colors.red, bg = colors.inner_bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.inner_bg },
        c = { fg = colors.fg, bg = colors.inner_bg },
      },
      inactive = {
        a = { fg = colors.fg, bg = colors.inactive_bg, gui = 'bold' },
        b = { fg = colors.fg, bg = colors.inactive_bg },
        c = { fg = colors.fg, bg = colors.inactive_bg },
      },
    }

    -- configure lualine with modified theme
    lualine.setup {
      options = {
        theme = my_lualine_theme,
      },
      sections = {
        lualine_x = {
          {
            lazy_status.updates,
            cond = lazy_status.has_updates,
            color = { fg = '#ff9e64' },
          },
          { 'encoding' },
          { 'fileformat' },
          { 'filetype' },
        },
      },
    }
  end,
}
