return {
   {
      'ggandor/leap.nvim',
      config = function()
         require("leap").create_default_mappings()
      end
   },

   {
      'nvim-telescope/telescope.nvim',
      cond = not vim.g.vscode,
      tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
         local builtin = require('telescope.builtin')
         vim.keymap.set('n', '<leader>xx', builtin.diagnostics, {})
         vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
         vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
         vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
         vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols, {})
         vim.keymap.set('n', '<leader>fw', builtin.lsp_workspace_symbols, {})
      end
   },
}
