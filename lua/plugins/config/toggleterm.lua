---@diagnostic disable: unused-function
-- =============================================
--             -== ToggleTerm ==-
-- =============================================
local Terminal = require("toggleterm.terminal").Terminal
local toggleterm = require("toggleterm")

toggleterm.setup({
	-- size can be a number or function which is passed the current terminal
	size = 16,
	hide_numbers = true, -- hide the number column in toggleterm buffers
	shade_terminals = true,
	shading_factor = 1, -- the degree by which to darken to terminal colour,
	-- default: 1 for dark backgrounds, 3 for light
	start_in_insert = true,
	insert_mappings = true, -- whether or not the open mapping applies in insert mode
	persist_size = true,
	direction = "horizontal",
	close_on_exit = true,
	shell = vim.o.shell, -- change the default shell
	-- This field is only relevant if direction is set to 'float'
})

-- lazygit
_G._Lazygit = Terminal:new({ cmd = "lazygit", hidden = true, direction = "horizontal" })
function _G._Lazygit_toggle()
	_Lazygit:toggle()
end

-- Python
_G._Python = Terminal:new({ cmd = "python", hidden = true })
function _G._Python_toggle()
	_Python:toggle()
end

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

vim.cmd("autocmd! TermOpen term://* lua set_terminal_keymaps()")
