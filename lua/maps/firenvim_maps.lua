local M = {}

M.config = function()

    -- save all buffers and quit
    vim.keymap.set('n', "<C-c>", "<CMD>wa<CR><CMD>qa<CR>", {
        desc = "Save all buffers and quit"
    })

    -- grow window horizontally
    vim.keymap.set('n', "<C-w>+", "<CMD>set lines+=8<CR>", {
        desc = "Grow window horizontally"
    })

    -- shrink window horizontally
    vim.keymap.set('n', "<C-w>-", "<CMD>set lines-=8<CR>", {
        desc = "Shrink window horizontally"
    })

end

return M

