local configs = require("nvim-treesitter.configs")
configs.setup({
    ensure_installed = {
        "help",
        "c",
        "python",
        "lua",
        "html",
        "css",
        "javascript",
        "typescript"
    },
    ignore_install = { "help" },
    disable = { "markdown" },
    sync_install = false,
    auto_install = false,
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    }
})
