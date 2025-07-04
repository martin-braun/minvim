vim.api.nvim_create_user_command(
    'Windsurf',
    function(_)
        vim.cmd('wall')
        vim.cmd('mks!')
        local r, c = unpack(vim.api.nvim_win_get_cursor(0))
        local g = vim.fn.expand('%') .. ':' .. r .. ':' .. c
        vim.cmd('!{ windsurf . && windsurf -g ' .. g .. '; }')
        -- vim.cmd('bufdo! bw')
        -- vim.cmd('q!')
    end,
    {
        nargs = 0,
        bang = false,
        desc = 'Save all buffers and open current file in Windsurf'
    }
)
