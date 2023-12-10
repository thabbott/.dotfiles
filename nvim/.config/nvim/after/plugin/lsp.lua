local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	lsp.default_keymaps({buffer = bufnr})
end)

require("lspconfig").lua_ls.setup({})
