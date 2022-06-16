-- =============================================
--             -== Dashboard ==-
-- =============================================
local db = require('dashboard')


db.custom_header = {
[[        ________ ++     ________      ]],
[[       /VVVVVVVV\++++  /VVVVVVVV\     ]],
[[       \VVVVVVVV/++++++\VVVVVVVV/     ]],
[[        |VVVVVV|++++++++/VVVVV/'      ]],
[[        |VVVVVV|++++++/VVVVV/'        ]],
[[       +|VVVVVV|++++/VVVVV/'+         ]],
[[     +++|VVVVVV|++/VVVVV/'+++++       ]],
[[   +++++|VVVVVV|/VVVVV/'+++++++++     ]],
[[     +++|VVVVVVVVVVV/'+++++++++       ]],
[[       +|VVVVVVVVV/'+++++++++         ]],
[[        |VVVVVVV/'+++++++++           ]],
[[        |VVVVV/'+++++++++             ]],
[[        |VVV/'+++++++++               ]],
[[        'V/'   ++++++                 ]],
[[                 ++                   ]],
[[                                      ]],
[[                                      ]],
}

db.custom_footer = {"HACK THE PLANET"}
db.session_directory = "~/.config/nvim/session"
db.custom_center = {
    {desc = "New Files                   ", action = ":ene!"},
    {desc = "Find Files                  ", action = "Telescope find_files"},
    {desc = "Recents                     ", action = "Telescope oldfiles"},
    {desc = "Update Plugins              ", action = "PackerUpdate"},
    {desc = "Settings                    ", action = "edit ~/.config/nvim/"}
}
