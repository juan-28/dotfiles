return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require 'kickstart.configs.lualine_config'
    require 'lualine'
  end,
}
