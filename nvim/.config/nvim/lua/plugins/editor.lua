return {
   {
      "lukas-reineke/indent-blankline.nvim",
      cond = not vim.g.vscode,
      main = "ibl",
      config = function ()
         require("ibl").setup({})
      end
   },

   {
      "kylechui/nvim-surround",
      cond = not vim.g.vscode,
      event = "VeryLazy",
      config = function()
         require("nvim-surround").setup({})
      end
   },

   {
      "windwp/nvim-autopairs",
      cond = not vim.g.vscode,
      event = "InsertEnter",
      config = function()
         require("nvim-autopairs").setup({})
      end
   },

   {
      "danymat/neogen",
      config = function()
         local neogen = require("neogen")
         neogen.setup({
            enabled = "true",
            languages = {
               python = {
                  template = {
                     annotation_convention = "numpydoc"
                  }
               }
            }
         })
         vim.keymap.set('n', '<leader>ng', neogen.generate, {})
      end
   },

}
