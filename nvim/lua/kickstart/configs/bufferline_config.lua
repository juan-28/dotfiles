local bufferline = require 'bufferline'
bufferline.setup {
  options = {
    mode = 'tabs',
    style_preset = bufferline.style_preset.default,
    diagnostics = 'nvim_lsp',
    icons = true,
    separator_style = 'slant',
    close_icon = '',
    modified_icon = '●',
    left_trunc_marker = '',
    right_trunc_marker = '',
    max_name_length = 18,
    max_prefix_length = 15,
    tab_size = 18,
    show_buffer_close_icons = true,
    show_close_icon = true,
    enforce_regular_tabs = false,
    always_show_bufferline = false,
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
