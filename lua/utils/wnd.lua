local M = {}

M.get_type = function()
    if vim.g.vscode then
        return "vscode"
    elseif not not vim.g.started_by_firenvim then
        return "firenvim"
    end
    return nil
end

M.get_vscode_fork = function()
    if vim.g.vscode then
        local ipchook = os.getenv("VSCODE_IPC_HOOK")
        if ipchook then
            if string.find(ipchook, "/Code/") then
                return "code"
            elseif string.find(ipchook, "/VSCodium/") then
                return "codium"
            elseif string.find(ipchook, "/Windsurf/") then
                return "windsurf"
            end
        end
    end
    return nil
end

M.is_terminal = function()
    return M.get_type() == nil
end

M.is_browser = function()
    return M.get_type() == "firenvim"
end

M.is_code_ide = function()
    return M.get_type() == "vscode"
end

return M

