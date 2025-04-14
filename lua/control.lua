-- prerequisites for specs'n'maps

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.timeoutlen = 1000 -- milliseconds to complete a mapped sequence
vim.opt.backspace = 'start,eol,indent' -- allow backspacing over everything
vim.opt.mouse = "c" -- true vim mode forbids mouse usage, get gud

-- turn off paste mode when leaving insert
vim.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})
