local lspsaga = require("lspsaga")
lspsaga.setup({ -- defaults ...
	debug = false,
	-- code action title icon
	code_action_icon = " ",
	code_action_prompt = {
		enable = true,
		sign = true,
		sign_priority = 40,
		virtual_text = true,
	},
    dianostic_header_icon = "   ",
	finder_definition_icon = "  ",
	finder_reference_icon  = "  ",
	max_preview_lines = 10,
	finder_action_keys = {
		open = {"<CR>", "l"},
		vsplit = "s",
		split = "S",
		quit = {"q", "<ESC>", "<C-c>"},
		scroll_down = "<C-f>",
		scroll_up = "<C-b>",
	},
	code_action_keys = {
		quit = {"q", "<ESC>", "<C-c>"},
		exec = "<CR>",
	},
	rename_action_keys = {
		quit = {"q", "<ESC>", "<C-c>"},
		exec = "<CR>",
	},
	definition_preview_icon = "  ",
	border_style = "round",
	rename_prompt_prefix = "  :",
	server_filetype_map = {},
	diagnostic_prefix_format = "%d. ",
})
