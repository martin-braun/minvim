local cmd = require("utils.cmd")
local nvm = require("utils.nvm")

-- please use lts/* as default (nvm alias default 'lts/*') or install lts system node (nvm alias default system) to use the LTS version as Neovim node.js provider binary as well (recommend)
vim.g.loaded_node_provider = nil
if nvm.is_using_unique_node_ver() then
    vim.g.node_host_prog = cmd.get_resolved_invoker_of("neovim-node-host")
    vim.g.coc_node_path = cmd.get_resolved_invoker_of("node")
else
    vim.g.node_host_prog = nvm.get_node_lts_path() .. "/bin/neovim-node-host"
    vim.g.coc_node_path = nvm.get_node_lts_path() .. "/bin/node"
end

