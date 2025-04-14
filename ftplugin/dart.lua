local fmt = require("utils.fmt")
if not fmt.buf_try_use({ "dart" }) then
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
end