if not vim.g.vscode then
   vim.g.nord_disable_background = true
   vim.g.nord_italic = false
   vim.g.nord_bold = false
   require("nord").set()
   
   vim.api.nvim_set_hl(0, "CursorLine", { bg = "#2e3440"})
end
