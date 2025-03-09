-- Keybinds
vim.g.mapleader = " "
vim.g.maplocalleader = ";"
vim.g.builtinlsp = true
vim.keymap.set("n", "<leader>jk", vim.cmd.Ex)
-- Check NVimTree for number and relativenumber
--vim.opt.relativenumber = true
--vim.opt.number = true
vim.opt.tabstop = 2 
vim.opt.shiftwidth = 2 
vim.opt.expandtab = true
vim.opt.scrolloff = 999 -- Always keep the cursor centered

vim.opt.relativenumber = true
vim.opt.number = true

vim.keymap.set('n', '<Leader>w', ':write<CR>')
vim.keymap.set('i', 'jk', '<ESC>l')


-- Colors/Theme
vim.o.background = "dark" -- or "light" for light mode
vim.opt.termguicolors = true


