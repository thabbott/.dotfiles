return {
   -- within files
   {
      'ggandor/leap.nvim',
      config = function()
         require("leap").create_default_mappings()
      end
   },

   -- between files
   {
      'nvim-telescope/telescope.nvim',
      cond = not vim.g.vscode,
      tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' },
      config = function()
         local builtin = require('telescope.builtin')
         vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
         vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
         vim.keymap.set('n', '<leader>fs', builtin.grep_string, {})
      end
   }
}
