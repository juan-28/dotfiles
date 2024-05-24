return {
  'goolord/alpha-nvim',
  lazy = true,
  event = 'VimEnter',
  config = function()
    require('kickstart.configs.alpha_config').configure()
  end,
}
