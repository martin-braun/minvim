local wnd = require("utils.wnd")
local M = { "nvim-lua/plenary.nvim" }
M.main = "plenary"
M.cond = wnd.is_terminal()

M.lazy = true

return M
