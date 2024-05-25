-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '(d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ')d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

--  See `:help wincmd` for a list of all window commands
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Keymap for nvimtree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>x', ':bd<CR>', { noremap = true, silent = true })

-- keymap for bufferline
-- Map <leader>Tab to cycle to the next buffer
vim.keymap.set('n', '<leader><Tab>', ':BufferLineCycleNext<CR>', { noremap = true, silent = true })

-- Set buffer navigation mappings using Bufferline
vim.keymap.set('n', '<leader>1', '<cmd>lua require("bufferline").go_to(1, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 1' })
vim.keymap.set('n', '<leader>2', '<cmd>lua require("bufferline").go_to(2, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 2' })
vim.keymap.set('n', '<leader>3', '<cmd>lua require("bufferline").go_to(3, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 3' })
vim.keymap.set('n', '<leader>4', '<cmd>lua require("bufferline").go_to(4, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 4' })
vim.keymap.set('n', '<leader>5', '<cmd>lua require("bufferline").go_to(5, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 5' })
vim.keymap.set('n', '<leader>6', '<cmd>lua require("bufferline").go_to(6, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 6' })
vim.keymap.set('n', '<leader>7', '<cmd>lua require("bufferline").go_to(7, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 7' })
vim.keymap.set('n', '<leader>8', '<cmd>lua require("bufferline").go_to(8, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 8' })
vim.keymap.set('n', '<leader>9', '<cmd>lua require("bufferline").go_to(9, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 9' })
vim.keymap.set('n', '<leader>$', '<cmd>lua require("bufferline").go_to(-1, true)<CR>', { noremap = true, silent = true, desc = 'Go to Buffer 10' })

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

vim.keymap.set('n', '<leader><Tab>', '<cmd>lua call_switch_from_tree_or_cycle()<CR>', { noremap = true, silent = true })

-- terminal
vim.api.nvim_set_keymap('n', '<Leader>!', ':split | terminal<CR>', { noremap = true, silent = true, desc = 'Open terminal in Split' })

-- tab management

-- Keybinding to go to the next tab
vim.api.nvim_set_keymap('n', '<leader>tn', ':tabnext<CR>', { noremap = true, silent = true })
-- Keybinding to go to the previous tab
vim.api.nvim_set_keymap('n', '<leader>tp', ':tabprevious<CR>', { noremap = true, silent = true })
-- Keybinding to open a new tab
vim.api.nvim_set_keymap('n', '<leader>to', ':tabnew<CR>', { noremap = true, silent = true })
-- Keybinding to close the current tab
vim.api.nvim_set_keymap('n', '<leader>tc', ':tabclose<CR>', { noremap = true, silent = true })
-- Keybinding to go to a specific tab number
vim.api.nvim_set_keymap('n', '<leader>t1', '1gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t2', '2gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>t3', '3gt', { noremap = true, silent = true })
-- Add more bindings as needed
