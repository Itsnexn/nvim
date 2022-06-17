-- =============================================
--             -== Nvim LSP ==-
-- =============================================
local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")
local lsp_colors = require("lsp-colors")
local capabilities = vim.lsp.protocol.make_client_capabilities()
local g = vim.g

-- {{{ UI Customization
lsp_colors.setup({
	Error = g.colors.red,
	Warning = g.colors.yellow,
	Information = g.colors.blue,
	Hint = g.colors.green,
})

local border = {
      {"╭", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╮", "FloatBorder"},
      {"│", "FloatBorder"},
      {"╯", "FloatBorder"},
      {"─", "FloatBorder"},
      {"╰", "FloatBorder"},
      {"│", "FloatBorder"},
}
-- }}}

-- {{{ Capabilities
capabilities.textDocument.completion.completionItem = {
    snippetSupport = true,
    preselectSupport = true,
    insertReplaceSupport = true,
    labelDetailsSupport = true,
    deprecatedSupport = true,
    commitCharactersSupport = true,
    tagSupport = { valueSet = { 1 } },
    resolveSupport = {
        properties = {
            "documentation",
            "detail",
            "additionalTextEdits",
        },
    },
}
-- }}}

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Diagnostic icons {{{
vim.lsp.handlers["textDocument/publishDiagnostics"] =
    vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
        -- Disable underline, it's very annoying
        underline = true,
        -- Enable virtual text, override spacing to 4
        virtual_text = false,
        -- {
            -- prefix = "●", -- "●", "▎", "x", "■"
            -- spacing = 2,
        -- },
        signs = true,
        update_in_insert = false
    })
-- }}}

lspconfig.ccls.setup({
	init_options = {
		cache = {
			directory = ".ccls-cache",
		},
	},
})

-- {{{ On ready func
lsp_installer.on_server_ready(function(server)
	local default_opts = {
		capabilities = capabilities,
		handlers = {
			["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = border }),
			["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = border }),
		},
		root_dir = function(_)
			return vim.loop.cwd()
		end,
        on_attach = function(client, bufnr)
            vim.api.nvim_create_autocmd("CursorHold", {
                buffer = bufnr,
                callback = function()
                    vim.cmd("Lspsaga show_cursor_diagnostics")
                end
            })
        end,
	}
	local server_opts = {
		["sumneko_lua"] = function()
			default_opts.settings = {
				Lua = {
					runtime = {
						version = "LuaJIT",
						path = vim.split(package.path, ";"),
					},
					diagnostics = {
						globals = { "vim", "awesome" },
					},
					workspace = {
						library = {
							[vim.fn.expand("$VIMRUNTIME/lua")] = true,
							[vim.fn.expand("$VIMRUNTIME/lua/vim/lsp")] = true,
						},
					},
				},
			}
		end,
	}

	server:setup(server_opts[server.name] and server_opts[server.name]() or default_opts)
	vim.cmd([[ do User LspAttachBuffers ]])
end)
-- }}}
