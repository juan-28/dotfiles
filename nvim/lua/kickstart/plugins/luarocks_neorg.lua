return {
  {
    'vhyrro/luarocks.nvim',
    priority = 1000,
    lazy = true,
    config = true,
  },

  {
    'nvim-neorg/neorg',
    dependencies = { 'luarocks.nvim' },
    lazy = true, -- Disable lazy loading as some `lazy.nvim` distributions set `lazy = true` by default
    version = '*', -- Pin Neorg to the latest stable release
    config = true,
  },
}
