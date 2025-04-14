local M = { "EdenEast/nightfox.nvim" }
M.main = "nightfox"
M.cond = true

M.lazy = false

M.opts = {
    options = { transparent = true },
    groups = {
        all = {
            Visual = { bg = "#edc57d" }, -- Example colors
            Whitespace = { fg = "#f06372" }, -- Example colors
        },
    },
}

return M
