-- Neovim Auto Commands ==============================================

local ol = vim.opt_local

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "html", "markdown", "css" },
    callback = function()
        vim.schedule(function()
            ol.tabstop = 2
            ol.shiftwidth = 2
            ol.softtabstop = 2
        end)
    end,
})

vim.api.nvim_create_autocmd("FileType", {
    pattern = { "make"},
    callback = function()
        vim.schedule(function()
            ol.tabstop = 8
            ol.shiftwidth = 8
            ol.softtabstop = 4
        end)
    end,
})
