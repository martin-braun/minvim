local M = {}

M.config = function()

    -- save all buffers and quit
    vim.keymap.set('n', "<C-c>", "<CMD>wa<CR><CMD>qa<CR>", {
        desc = "Save all buffers and quit"
    })

end

return M
