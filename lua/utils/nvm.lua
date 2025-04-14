local M = {}

M.is_using_unique_node_ver = function()
    if os.getenv("NVM_DIR") ~= nil then
        local def_alias_name_f = io.open(os.getenv("NVM_DIR") .. "/alias/default")
        return def_alias_name_f == nil or def_alias_name_f:read() == "system"
    end
    return true
end

M.get_node_lts_path = function()
    local ltsi_f = io.open(os.getenv("NVM_DIR") .. "/alias/lts/*")
    if ltsi_f == nil then
        return nil
    end
    local ltsn_fn = os.getenv("NVM_DIR") .. "/alias/" .. ltsi_f:read()
    local ltsn_f = io.open(ltsn_fn)
    if ltsn_f == nil then
        return nil
    end
    local lts_path = os.getenv("NVM_DIR") .. "/versions/node/" .. ltsn_f:read()
    ltsi_f:close()
    ltsn_f:close()
    return lts_path
end

return M
