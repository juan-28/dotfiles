return {
  {
    'akinsho/bufferline.nvim',
    version = '*', -- Always use the latest version
    dependencies = { 'nvim-tree/nvim-web-devicons' },

    config = function()
      require 'kickstart.configs.bufferline_config'
    end,
  },
}
