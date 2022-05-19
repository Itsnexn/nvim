-- =============================================
--              -== Other Cfg ==-
-- =============================================
local g = vim.g
local colors = require("tokyonight.colors").setup({})

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

-- Trim white spaces in the file
function _G.TrimWhitespaces()
    local pos = vim.api.nvim_win_get_cursor(0)
    vim.cmd("keeppatterns %s/\\s\\+$//e")
    vim.api.nvim_win_set_cursor(0, pos)
end
-- }}}
