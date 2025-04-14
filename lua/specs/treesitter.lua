local wnd = require("utils.wnd")
local M = { "nvim-treesitter/nvim-treesitter" }
M.main = "nvim-treesitter.configs"
M.cond = wnd.is_terminal()
M.build = ":TSUpdate"

M.lazy = false

M.opts = {
    ensure_installed = "all",
    sync_install = false,
    auto_install = true,
    highlight = {
        enable = true,
        disable = function(_, buf)
            local max_filesize = 100 * 1024 -- 100 KB
            local ok, stats = pcall(
                vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf)
            )
            if ok and stats and stats.size > max_filesize then
                return true
            end
        end,
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true
    }
}

return M
