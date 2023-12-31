local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	{
        'nvim-telescope/telescope.nvim',
        tag = '0.1.5',
		dependencies = { 'nvim-lua/plenary.nvim' }
	},
    {'rebelot/kanagawa.nvim'},
    {'famiu/feline.nvim'},
	{
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate'
    },
	{'nvim-treesitter/playground'},
	{'theprimeagen/harpoon'},
	{'mbbill/undotree'},
	{'tpope/vim-fugitive'},
	{
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x'
    },
	{'neovim/nvim-lspconfig'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'hrsh7th/nvim-cmp'},
	{'L3MON4D3/LuaSnip'},
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    }
}, {
	install = {
		colorscheme = { 'rose-pine' }
	}
})
