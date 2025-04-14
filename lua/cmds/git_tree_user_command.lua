vim.api.nvim_create_user_command(
    'GitTree',
    function(opts)
        local args = opts.fargs
        if #args < 1 then
            vim.cmd('ene | r !git ls-tree -r --name-only HEAD | tree -f --fromfile')
        else
            vim.cmd(
                'ene | r !git ls-tree -r --name-only HEAD | tree -f --fromfile -L' ..
                args[1]
            )
        end
        vim.cmd(':1')
        vim.cmd('setlocal buftype=nofile bufhidden=hide noswapfile')
    end,
    { nargs = '*', bang = false, desc = 'Show unignored git files in the current directory' }
)
