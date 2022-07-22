-- Setting leader key
vim.api.nvim_set_keymap('n', '<Space>', "<nop>", {noremap = true, silent = true})
vim.g.mapleader = '<Space>'

--[[ Disable arrow key movement
vim.api.nvim_set_keymap({'i', 'n', 'v'}, '<Up>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap({'i', 'n', 'v'}, '<Down>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap({'i', 'n', 'v'}, '<Left>', '<nop>', {noremap = true, silent = true})
vim.api.nvim_set_keymap({'i', 'n', 'v'}, '<Right>', '<nop>', {noremap = true, silent = true})
--]]

-- Easier split navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})
