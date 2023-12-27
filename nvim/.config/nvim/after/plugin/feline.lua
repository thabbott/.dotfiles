local feline = require("feline")
local components = {
    active = {},
    inactive = {}
}

table.insert(components.active, {})
table.insert(components.active, {})
table.insert(components.active, {})

table.insert(components.active[1], {
    provider = "vi_mode",
    hl = function()
        return {
            name = require("feline.providers.vi_mode").get_mode_highlight_name(),
            fg = require("feline.providers.vi_mode").get_mode_color(),
            style = "bold"
        }
    end,
    icon = ""
})

table.insert(components.active[2], {
    provider = {
        name = "file_info",
        opts = {
            colored_icon = false,
            file_modified_icon = "+",
            file_readonly_icon = "[RO]"
        }
    },
    icon = ""
})

table.insert(components.active[3], {
    provider = "position",
    icon = ""
})

feline.setup({
    components = components
})
