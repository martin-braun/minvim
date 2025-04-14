local cmd = require("utils.cmd")

vim.g.loaded_perl_provider = nil
vim.g.perl_host_prog = cmd.get_resolved_invoker_of("perl")
