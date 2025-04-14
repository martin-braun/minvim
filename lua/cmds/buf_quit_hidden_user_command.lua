vim.api.nvim_create_user_command(
    'BufQuitHidden',
    function(_)
        local bufinfos = vim.fn.getbufinfo({ buflisted = true })
        vim.tbl_map(function(bufinfo)
            if bufinfo.changed == 0 and (not bufinfo.windows or #bufinfo.windows == 0) then
                vim.api.nvim_buf_delete(bufinfo.bufnr, {
                    force = vim.fn.getbufvar(bufinfo.bufnr, '&buftype') == 'terminal',
                    unload = false
                })
            end
        end, bufinfos)
    end,
    { nargs = 0, bang = false, desc = 'Wipeout all buffers not shown in a window' }
)
