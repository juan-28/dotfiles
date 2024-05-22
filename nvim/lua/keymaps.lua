-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

-- Keybinds to make split navigation easier.
--  Use CTRL+<hjkl> to switch between windows
--
--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- vim: ts=2 sts=2 sw=2 et

-- Keymap for nvimtree
vim.api.nvim_set_keymap('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<leader>x', ':bd<CR>', { noremap = true, silent = true })

-- keymap for bufferline
-- Map <leader>Tab to cycle to the next buffer
vim.api.nvim_set_keymap('n', '<leader><Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

-- Set buffer navigation mappings using Bufferline
vim.api.nvim_set_keymap('n', '<leader>1', '<cmd>lua require("bufferline").go_to(1, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>2', '<cmd>lua require("bufferline").go_to(2, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>3', '<cmd>lua require("bufferline").go_to(3, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>4', '<cmd>lua require("bufferline").go_to(4, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>5', '<cmd>lua require("bufferline").go_to(5, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>6', '<cmd>lua require("bufferline").go_to(6, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>7', '<cmd>lua require("bufferline").go_to(7, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>8', '<cmd>lua require("bufferline").go_to(8, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>9', '<cmd>lua require("bufferline").go_to(9, true)<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>$', '<cmd>lua require("bufferline").go_to(-1, true)<CR>', { noremap = true, silent = true })

-- Function to switch from NvimTree or cycle through bufferline buffers
local function switch_from_tree_or_cycle()
  local buf_ft = vim.bo.filetype
  if buf_ft == 'NvimTree' then
    require('bufferline').go_to(1) -- Go to the first buffer if in NvimTree
  else
    require('bufferline').cycle(1) -- Cycle to the next buffer otherwise
  end
end

_G.call_switch_from_tree_or_cycle = function()
  switch_from_tree_or_cycle()
end

vim.api.nvim_set_keymap('n', '<leader><Tab>', '<cmd>lua call_switch_from_tree_or_cycle()<CR>', { noremap = true, silent = true })
