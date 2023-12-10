require("nvim-treesitter.configs").setup({
	ensure_installed = {
		"help",
		"c",
		"python",
		"lua"
	},
	
	ignore_install = { "help" },

	sync_install = false,

	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false
	}
})
