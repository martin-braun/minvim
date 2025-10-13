local wnd = require("utils.wnd")

if wnd.is_code_ide() then
    -- modifier bridge
    vim.api.nvim_exec([[
        function! SetCursorLineNrColorInsert(mode)
            if a:mode == "i"
                call VSCodeNotify('nvim-theme.insert')
            elseif a:mode == "r"
                call VSCodeNotify('nvim-theme.replace')
            endif
        endfunction
        augroup CursorLineNrColorSwap
            autocmd!
            autocmd ModeChanged *:[vV\x16]* call VSCodeNotify('nvim-theme.visual')
            autocmd ModeChanged *:[R]* call VSCodeNotify('nvim-theme.replace')
            autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
            autocmd InsertLeave * call VSCodeNotify('nvim-theme.normal')
            autocmd CursorHold * call VSCodeNotify('nvim-theme.normal')
        augroup END
    ]], false)
    -- bindings
    require("maps.vscode_maps").config()
end

