local cmd = require("utils.cmd")

vim.g.loaded_ruby_provider = nil
vim.g.ruby_host_prog = cmd.get_resolved_invoker_of("neovim-ruby-host")
