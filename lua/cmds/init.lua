local wnd = require("utils.wnd")

local imports = {
    { wnd.is_terminal(), "buf_quit_hidden" },
    { wnd.is_terminal(), "code" },
    { wnd.is_terminal(), "git_tree" },
    { wnd.is_terminal(), "grep" },
    { wnd.is_terminal(), "windsurf" },
}

for _, import in ipairs(imports) do
    if import[1] then
        require("cmds." .. import[2] .. "_user_command")
    end
end
