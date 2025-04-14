local wnd = require("utils.wnd")

if wnd.is_terminal() then
    local imports = {
        { true, "python3" },
        { true, "node" },
        { true, "ruby" },
        { true, "perl" },
    }

    for _, import in ipairs(imports) do
        if import[1] then
            require("provs." .. import[2] .. "_prov")
        end
    end
end
