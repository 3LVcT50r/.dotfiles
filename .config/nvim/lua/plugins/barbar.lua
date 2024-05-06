return {
    "romgrk/barbar.nvim",
    config = function()
        vim.keymap.set('n', '<leader><Tab>', ':BufferNext<CR>')
        vim.keymap.set('n', '<leader>1', ':BufferGoto 1<CR>')
        vim.keymap.set('n', '<leader>2', ':BufferGoto 2<CR>')
        vim.keymap.set('n', '<leader>3', ':BufferGoto 3<CR>')
        vim.keymap.set('n', '<leader>4', ':BufferGoto 4<CR>')
        vim.keymap.set('n', '<leader>5', ':BufferGoto 5<CR>')
        vim.keymap.set('n', '<leader>6', ':BufferGoto 6<CR>')
        vim.keymap.set('n', '<leader>7', ':BufferGoto 7<CR>')
        vim.keymap.set('n', '<leader>8', ':BufferGoto 8<CR>')
        vim.keymap.set('n', '<leader>9', ':BufferGoto 9<CR>')
        -- vim.keymap.set('n', '<leader>-S-Tab', ':BufferPrevious<CR>')
    end
}
