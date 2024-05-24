return {

  {
    'mistricky/codesnap.nvim',
    build = 'make build_generator',
    keys = {
      { '<leader>cc', '<cmd>CodeSnap<cr>', mode = 'x', desc = 'Save selected code snapshot into clipboard' },
      { '<leader>cs', '<cmd>CodeSnapSave<cr>', mode = 'x', desc = 'Save selected code snapshot in ~/code_snips' },
    },
    opts = {
      save_path = '~/Desktop/Personal_dev/code_snips/',
      has_breadcrumbs = true,
      bg_theme = 'summer',
    },
},
}
