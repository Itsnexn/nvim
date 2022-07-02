-- =============================================
--         -== NVim Run Command's ==-
-- =============================================

local o = vim.opt
local ol = vim.opt_local
local g = vim.g
local bind = vim.api.nvim_set_keymap
local cp_api = require("catppuccin.api.colors")

g.mapleader = " " -- Leader. o.termguicolors = true -- Gui Colors. !IMPORTANT
o.clipboard = "unnamedplus" -- Set clipboard.
o.encoding = "UTF-8" -- Text Encoding.
o.mouse = "a" -- Enable mouse in all modes.
o.completeopt = "menu,menuone,noselect" -- required by cmp
o.updatetime = 250
o.path = o.path + "**/*"


if vim.fn.has('nvim') == 1 then
    -- For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
    vim.env.NVIM_TUI_ENABLE_TRUE_COLOR = 1
end

if vim.fn.has("termguicolors") == 1 then
    -- For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    -- Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    --  < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
  o.termguicolors = true
end

-- Theme {{{
vim.cmd([[

]])

g.catppuccin_flavour = "mocha"
g.colors = cp_api.get_colors()

vim.cmd("colorscheme catppuccin")
vim.cmd("highlight CursorLineNr term=bold guifg=" .. g.colors.yellow)
vim.cmd("highlight RunitPrompt term=bold guifg=" .. g.colors.green)
vim.cmd("highlight Wildmenu term=bold guifg=" .. g.colors.red)
-- }}}

-- Status bar {{{
o.showmode = false
o.laststatus = 2
o.cmdheight = 1
o.showcmd = true
-- }}}

-- Main Area {{{
-- Numbers
o.number = true
o.relativenumber = true
o.numberwidth = 3
o.signcolumn = "yes:1"
-- Text
o.wrap = true
o.colorcolumn = "70"
o.expandtab = true
o.tabstop = 4
o.shiftwidth = 4
o.softtabstop = 2
o.scrolloff = 8
o.smartindent = true
o.smartcase = true -- Smart case search
o.hidden = true
o.cursorline = true
o.hlsearch = true
o.ignorecase = true
o.wildmenu = true
o.wildmode = { "full" }
o.pumheight = 15
-- }}}

-- Splits {{{
o.splitbelow = true
o.splitright = true
-- }}}

bind("c", "W!", "execute 'silent! write !sudo tee % >/dev/null' <bar> edit!", { noremap = true })
bind("c", "syntax", "<cmd>Telescope filetypes<CR>", {})
