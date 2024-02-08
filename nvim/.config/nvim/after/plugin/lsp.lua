local lsp = require("lsp-zero")

lsp.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	lsp.default_keymaps({buffer = bufnr})
end)

local config = require("lspconfig")
config.lua_ls.setup({})
config.clangd.setup({})
config.tsserver.setup({})
config.pyright.setup({
    on_attach = on_attach,
    settings = {
        pyright = {
            extraPaths  = "/home"
        },
        python = {
            analysis = {
                autoSearchPaths = true,
                typeCheckingMode = "off"
            }
        }
    }
})
