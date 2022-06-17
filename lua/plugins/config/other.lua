-- =============================================
--              -== Other Cfg ==-
-- =============================================
local g = vim.g
local catppuccin = require("catppuccin")

-- {{{ Vim Commentary
g.commenter_comment_empty = false
-- }}}

-- {{{ Vim Match-Up setting
g.loaded_matchit = true
g.matchup_matchparen_singleton = false
g.matchup_matchparen_offscreen = { method = "popup" }
-- g.matchup_delim_stopline = 1500
-- g.matchup_matchparen_stopline = 400
-- }}}

-- {{{ Nvim Surround
require("surround").setup({
	context_offset = 100,
	load_autogroups = false,
	mappings_style = "sandwich",
	map_insert_mode = true,
	quotes = { "'", '"' },
	brackets = { "(", "{", "[" },
	pairs = {
		nestable = { { "(", ")" }, { "[", "]" }, { "{", "}" } },
		linear = { { "'", "'" }, { "`", "`" }, { '"', '"' } },
	},
	prefix = "s",
})
-- }}}

-- {{{ Functions

-- {{{ Vim Better Whitespaces
g.better_whitespace_guicolor = g.colors.red
g.better_whitespace_filetypes_blacklist = {
    "dashboard",
    "NvimTree",
}
-- }}}


catppuccin.setup({
    transparent_background = false,
    term_colors = false,
    styles = {
        comments = "italic",
        conditionals = "italic",
        loops = "NONE",
        functions = "italic",
        keywords = "NONE",
        strings = "NONE",
        variables = "NONE",
        numbers = "NONE",
        booleans = "NONE",
        properties = "NONE",
        types = "NONE",
        operators = "NONE",
    },
    integrations = {
        treesitter = true,
        native_lsp = {
            enabled = true,
            virtual_text = {
                errors = "italic",
                hints = "italic",
                warnings = "italic",
                information = "italic",
            },
            underlines = {
                errors = "underline",
                hints = "underline",
                warnings = "underline",
                information = "underline",
            },
        },
        lsp_trouble = true,
        cmp = true,
        lsp_saga = true,
        gitsigns = true,
        telescope = true,
        nvimtree = {
            enabled = true,
            show_root = true,
            transparent_panel = false,
        },
        which_key = true,
        indent_blankline = {
            enabled = true,
            colored_indent_levels = false,
        },
        dashboard = true,
        bufferline = true,
        markdown = true,
    }
})


