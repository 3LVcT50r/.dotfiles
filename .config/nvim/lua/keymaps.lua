vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
-- vim.opt.cursorline = true
vim.opt.autoread = true 

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.scrolloff = 10

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Resetear el search
vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', '<c-h>', '<c-w><c-h>', { desc = "Move focus to the left windonw" })
vim.keymap.set('n', '<c-l>', '<c-w><c-l>', { desc = "Move focus to the rigth windonw" })
vim.keymap.set('n', '<c-j>', '<c-w><c-j>', { desc = "Move focus to the loew windonw" })
vim.keymap.set('n', '<c-k>', '<c-w><c-k>', { desc = "Move focus to the upper windonw" })

-- Goto el siguiente caso erroneo (mirar el video, [d, o kickstart)
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

