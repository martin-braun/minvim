local maps = require("maps.deepl_maps")

local M = { "ryicoh/deepl.vim" }
M.main = "deepl"
M.cond = os.getenv("DEEPL_AUTH_KEY") ~= nil

M.lazy = true
M.keys = maps.keys

M.init = function()
    vim.g['deepl#endpoint'] = "https://api-free.deepl.com/v2/translate"
    vim.g['deepl#auth_key'] = os.getenv("DEEPL_AUTH_KEY")
end

return M

