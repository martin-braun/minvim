local cmd = require("utils.cmd")

vim.g.loaded_python3_provider = nil
vim.g.python3_host_prog = cmd.get_resolved_invoker_of("python3")

