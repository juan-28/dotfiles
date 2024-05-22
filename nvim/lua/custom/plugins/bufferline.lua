return {
  {
    'akinsho/bufferline.nvim',
    version = '*', -- Always use the latest version
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }, -- Optionally loaded
    after = 'nvim-web-devicons', -- Load after web-devicons
    config = function()
      local bufferline = require 'bufferline'
      -- Setting up bufferline
      bufferline.setup {
        options = {
          mode = 'buffers', -- Use bufferline in 'buffers' mode
          style_preset = bufferline.style_preset.default,
          diagnostics = 'nvim_lsp',
          icons = true,
          separator_style = 'slant', -- Alternatives: 'thick' or 'thin'
          close_icon = '',
          modified_icon = '●',
          left_trunc_marker = '',
          right_trunc_marker = '',
          max_name_length = 18,
          max_prefix_length = 15, -- For duplicate names
          tab_size = 18,
          show_buffer_close_icons = true,
          show_close_icon = true,
          enforce_regular_tabs = false,
          always_show_bufferline = true,
          offsets = { { filetype = 'NvimTree', text = 'File Explorer', highlight = 'Directory', separator = true } },
          color_icons = true,
          highlights = {
            buffer_selected = {
              guifg = '#ffffff',
              guibg = '#0000ff',
              gui = 'bold',
            },
            fill = {
              guifg = '#ffffff',
              guibg = '#333333',
            },
          },
        },
      }
    end,
  },
}
