local cmd = require("utils.cmd")
local sys = require("utils.sys")

-- interop
vim.opt.shell = sys.is_windows() and cmd.get_resolved_invoker_of(
    "cmd"
) or cmd.get_resolved_invoker_of("bash")
vim.opt.clipboard:append { 'unnamed', 'unnamedplus' } -- use system clipboard

-- window
vim.opt.title = true -- show the filename in the window titlebar

-- status line
-- vim.opt.laststatus = 2

-- text search
vim.opt.ignorecase = true -- ignore case in search by default (use \C to negate)
vim.opt.inccommand = 'split' -- split view for previewing changes

-- file search
vim.opt.path:append { '**' } -- finding files recursively
vim.opt.wildignore:append {
    '*/.git/*', '*/.svn/*', '*/.hg/*', '*/node_modules/*'
}

-- backups
vim.opt.backup = false
vim.opt.writebackup = false
vim.opt.backupskip = '/tmp/*,/private/tmp/*,/private/var/tmp/*,/usr/local/var/tmp/*,/var/folders/*'
