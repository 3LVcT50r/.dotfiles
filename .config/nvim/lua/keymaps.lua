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

-- vim.opt.colorcolumn = "80"

vim.api.nvim_set_option_value("colorcolumn", "80", {})

-- Resetear el search
vim.keymap.set('n', '<leader>f', ':nohlsearch<CR>')
vim.keymap.set('i', 'jj', '<Esc>')

vim.keymap.set('n', '<leader>h', '<c-w><c-h>', { desc = "Move focus to the left windonw" })
vim.keymap.set('n', '<leader>l', '<c-w><c-l>', { desc = "Move focus to the rigth windonw" })
vim.keymap.set('n', '<leader>j', '<c-w><c-j>', { desc = "Move focus to the lower windonw" })
vim.keymap.set('n', '<leader>k', '<c-w><c-k>', { desc = "Move focus to the upper windonw" })

-- Goto el siguiente caso erroneo (mirar el video, [d, o kickstart)
-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

vim.keymap.set('n', '<c-j>', '20j')
vim.keymap.set('n', '<c-k>', '20k')

-- TIP: Disable arrow keys in normal mode
-- vim.keymap.set('n', '<left>', '<cmd>echo "Use h to move!!"<CR>')
-- vim.keymap.set('n', '<right>', '<cmd>echo "Use l to move!!"<CR>')
-- vim.keymap.set('n', '<up>', '<cmd>echo "Use k to move!!"<CR>')
-- vim.keymap.set('n', '<down>', '<cmd>echo "Use j to move!!"<CR>')

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

-- Resize 
vim.keymap.set('n', '<c-w>h', '<c-w><')
vim.keymap.set('n', '<c-w>l', '<c-w>>')
vim.keymap.set('n', '<c-w>j', '<c-w>-')
vim.keymap.set('n', '<c-w>k', '<c-w>+')










