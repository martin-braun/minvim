local fmt = require("utils.fmt")
if not fmt.buf_try_use({ "dprint", "prettier" }) then
    -- or fall back to treesitter which is good enough for this filetype
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
end
