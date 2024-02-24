vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- tabs as three spaces
local tabsize = 3
vim.opt.expandtab = true
vim.opt.shiftwidth = tabsize
vim.opt.tabstop = tabsize

if not vim.g.vscode then
   -- proper colors
   vim.opt.termguicolors = true

   -- line numbers
   vim.opt.number = true
   vim.opt.signcolumn = "yes:1"

   -- better indentation
   vim.opt.smartindent = true
   vim.opt.breakindent = true
end
