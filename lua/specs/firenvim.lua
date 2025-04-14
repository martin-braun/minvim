local wnd = require("utils.wnd")
local maps = require("maps.firenvim_maps")

local M = { "glacambre/firenvim" }
M.main = "firenvim"
M.cond = true -- can't wnd.is_browser(), because it can't install in the browser
M.build = ":call firenvim#install(0)"

M.lazy = false

M.config = function()
    if not wnd.is_browser() then
        return
    end
    maps.config()
end

M.init = function()
    if not wnd.is_browser() then
        return
    end

    -- only take over when using the keyboard shortcut
    vim.g.firenvim_config = {
        localSettings = {
            [".*"] = {
                cmdline = "vim",
                takeover = "never"
            }
        }
    }

    -- wrap by default:
    vim.opt.wrap = true

    -- start in append mode:
    vim.cmd("set guifont=:h22")
    vim.cmd("call cursor(0, col('.') + 1)")
    vim.cmd("startinsert")
end

return M
