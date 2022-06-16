-- =============================================
--             -== NvimTree ==-
-- =============================================
local g = vim.g
local nvim_tree = require("nvim-tree")
local tree_cb = require("nvim-tree.config").nvim_tree_callback


-- each of these are documented in `:help nvim-tree.OPTION_NAME`
nvim_tree.setup({
	disable_netrw = true,
	open_on_setup = true,
	ignore_ft_on_setup = { "dashboard" },
	open_on_tab = false,
	hijack_cursor = true,
	update_cwd = true,
    respect_buf_cwd = true,
    create_in_closed_folder = true,
	git = {
		enable = true,
		ignore = true,
	},
    renderer = {
        icons = {
            padding = " ",
            symlink_arrow = " >> ",
            glyphs = {
                default = "",
                symlink = "",
                folder = {
                    arrow_open = "",
                    arrow_closed = "",
                    default = "",
                    open = "",
                    empty = "",
                    empty_open = "",
                    symlink = "",
                    symlink_open = "",
                },
                git = {
                    unstaged = "",
                    staged = "S ",
                    unmerged = "",
                    renamed = "凜",
                    deleted = "﫧",
                    untracked = "U",
                    ignored = "﬒",
                },
            }
        },
        highlight_git = true,
        highlight_opened_files = "all",
        root_folder_modifier = ":~",
        add_trailing = true,
        group_empty = true,
    },

    actions = {
        use_system_clipboard = true,
        open_file = {
            window_picker = {
                exclude = {
                    filetype = {
                        "notify",
                        "packer",
                        "help",
                        "toggleterm",
                    },
                    buftype = {
                        "terminal",
                    },
                }
            }
        }
    },

	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = false,
		ignore_list = {},
	},
	view = {
		width = 30,
		height = 30,
		hide_root_folder = false,
		side = "left",
		auto_resize = true,
		mappings = {
			custom_only = true,
			list = {
				{ key = { "l", "<CR>", "<2-LeftMouse>" }, action = "edit" },
				{ key = "h", action = "close_node" },
				{ key = { "<2-RightMouse>", "<S-CR>", "L" }, action = "cd" },
				{ key = "v", action = "vsplit" },
				{ key = "s", action = "split" },
				{ key = "t", action = "tabnew" },
				{ key = "<", action = "prev_sibling" },
				{ key = ">", action = "next_sibling" },
				{ key = "<Tab>", action = "preview" },
				{ key = "I", action = "toggle_ignored" },
				{ key = "H", action = "toggle_dotfiles" },
				{ key = "n", action = "create" },
				{ key = "d", action = "trash" },
				{ key = "D", action = "remove" },
				{ key = "r", action = "rename" },
				{ key = "<C-r>", action = "full_rename" },
                { key = "R", action = "refresh" },
				{ key = "x", action = "cut" },
				{ key = "c", action = "copy" },
				{ key = "p", action = "paste" },
				{ key = "y", action = "copy_name" },
				{ key = "Y", action = "copy_path" },
				{ key = "gy", action = "copy_absolute_path" },
				{ key = "[c", action = "prev_git_item" },
				{ key = "]c", action = "next_git_item" },
				{ key = "-", action = "dir_up" },
				{ key = "o", action = "system_open" },
				{ key = "q", action = "close" },
				{ key = "g?", action = "toggle_help" },
                { key = ".", action = "run_file_command" }
			},
		},
	},
})
