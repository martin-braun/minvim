local M = { "f-person/auto-dark-mode.nvim" }
M.main = "auto-dark-mode"
M.cond = true
M.dependencies = { "EdenEast/nightfox.nvim" }

M.lazy = false

M.opts = {
    update_interval = 1000,
    set_dark_mode = function()
        vim.cmd [[colorscheme carbonfox]]
    end,
    set_light_mode = function()
        vim.cmd [[colorscheme dayfox]]
    end,
    fallback = "dark"
}

return M

