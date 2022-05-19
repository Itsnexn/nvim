-- =============================================
--             -== Dashboard ==-
-- =============================================
local g = vim.g

vim.g.dashboard_custom_header = {
[[        ________ ++     ________]],
[[       /VVVVVVVV\++++  /VVVVVVVV\]],
[[       \VVVVVVVV/++++++\VVVVVVVV/]],
[[        |VVVVVV|++++++++/VVVVV/']],
[[        |VVVVVV|++++++/VVVVV/']],
[[       +|VVVVVV|++++/VVVVV/'+]],
[[     +++|VVVVVV|++/VVVVV/'+++++]],
[[   +++++|VVVVVV|/VVVVV/'+++++++++]],
[[     +++|VVVVVVVVVVV/'+++++++++]],
[[       +|VVVVVVVVV/'+++++++++]],
[[        |VVVVVVV/'+++++++++]],
[[        |VVVVV/'+++++++++]],
[[        |VVV/'+++++++++]],
[[        'V/'   ++++++]],
[[                 ++]],
}

g.dashboard_default_executive = "telescope"
g.dashboard_session_directory = "~/.config/nvim/session"

g.dashboard_custom_section = {
	a = { description = { "New File                              " }, command = ":ene!" },
	b = { description = { "Find File                             " }, command = "Telescope find_files" },
	c = { description = { "Recents                               " }, command = "Telescope oldfiles" },
	d = { description = { "Wiki Index                            " }, command = "VimwikiIndex" },
	e = { description = { "Update Plugins                        " }, command = "PackerUpdate" },
	f = { description = { "Settings                              " }, command = "edit ~/.config/nvim/" },
}
