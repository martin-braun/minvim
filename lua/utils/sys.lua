local M = {}

M.is_linux = function()
    return vim.loop.os_uname().sysname == "Linux"
end

M.is_darwin = function()
    return vim.loop.os_uname().sysname == "Darwin"
end

M.is_windows = function()
    return vim.loop.os_uname().sysname == "Windows_NT"
end

return M
