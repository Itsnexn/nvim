<!-- Made by Nexn with VIM :) -->
<p align="center">
  <img height=90 src=".github/nvim-logo.png">
</p>

<div align="center">
    <div>
        <img src="https://img.shields.io/github/stars/itsnexn/nvim?style=flat-square"/>
    </div>
</div>

---

# Installation

1. **install [packer](https://github.com/wbthomason/packer.nvim#quickstart)**

2. **clone the repository**

clone the repository to your `$XDG_CONFIG_HOME/nvim` directory:
```sh
git clone https://github.com/itsnexn/nvim.git $XDG_CONFIG_HOME/nvim
```

4. **install plugins**

because how we sourcing plugins you'll probably get a lot of error in first time, so you can ignore it for now. then enter `:luafile $XDG_CONFIG_HOME/nvim/lua/plugins/init.lua` after that you can simply enter `:PlugInstall` to install plugins.

5. **install Update treesitter**

while youre in nvim you enter `:TSUpdate` to update treesitter.

6. **install language servers and formatters of your choice.**

my configurations comes with language servers and formatters for many languages.
so you have to install what you want by yourself. after installing language server binary, you can enter `:LspInstall` to install language server. or enter `:LspInstallInfo` to see what language servers are available and install them.

# List of language servers:
- [bashls](https://github.com/bash-lsp/bash-language-server) - bash language server
- [sumnko_lua](https://github.com/sumneko/lua-language-server) - lua language server
- [tsserver](https://github.com/typescript-language-server/typescript-language-server) - typescript language server
- [emmet-ls](https://github.com/aca/emmet-ls) - emmet for html
- [pyright](https://github.com/microsoft/pyright) - python static type checker
- [pylsp](https://github.com/python-lsp/python-lsp-server) - python language server
- [clangd](https://clangd.llvm.org/installation.html) - clangd

# List of formatters and diagnostics:
- [black](https://github.com/psf/black) - python formatter
- [stylua](https://github.com/JohnnyMorganz/StyLua) - lua formatter
- [prettier](https://github.com/prettier/prettier) - prettier js, ts, css, scss, html, json, yaml, markdown formatter
- [eslint](https://eslint.org/) - js, ts, css, scss, html, json, yaml, markdown formatter
- [clang_format](https://clang.llvm.org/docs/ClangFormat.html) - clang_format
- [flake8](https://flake8.pycqa.org/en/latest/) - flake8 python linter/diagnoser

for more check out [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim) documentation.

# List of plugins:

[packer.nvim](https://github.com/wbthomason/packer.nvim),
[nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons),
[plenary.nvim](https://github.com/nvim-lua/plenary.nvim),
[nvim-lspconfig](https://github.com/neovim/nvim-lspconfig),
[nvim-lsp-installer](https://github.com/williamboman/nvim-lsp-installer),
[lsp-colors](https://github.com/folke/lsp-colors.nvim),
[lspkind-nvim](https://github.com/onsails/lspkind-nvim),
[Luasnip](https://github.com/L3MON4D3/LuaSnip),
[LspSaga.nvim](https://github.com/tami5/lspsaga.nvim),
[Trouble.nvim](https://github.com/folke/trouble.nvim),
[null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim),
[nvim-cmp](https://github.com/hrsh7th/nvim-cmp),
[cmp-nvim-lua](https://github.com/hrsh7th/cmp-nvim-lua),
[cmp-nvim-lsp](https://github.com/hrsh7th/cmp-nvim-lsp),
[cmp-buffer](https://github.com/hrsh7th/cmp-buffer),
[cmp-path](https://github.com/hrsh7th/cmp-path),
[cmp-luasnip](https://github.com/saadparwaiz1/cmp_luasnip),
[bufferline.nvim](https://github.com/akinsho/bufferline.nvim),
[close-buffers.vim](https://github.com/Asheq/close-buffers.vim),
[nvim-auto-pairs](https://github.com/windwp/nvim-autopairs),
[nvim-matchup](https://github.com/andymass/vim-matchup),
[tokyonight.nvim](https://github.com/folke/tokyonight.nvim),
[nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter),
[spellsitter.nvim](https://github.com/lewis6991/spellsitter.nvim),
[lualine.nvim](https://github.com/nvim-lualine/lualine.nvim),
[nvim-colorizer.lua](https://github.com/norcalli/nvim-colorizer.lua),
[dashboard.nvim](https://github.com/glepnir/dashboard-nvim),
[indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim),
[github copilot](https://github.com/github/copilot.vim),
[surround.nvim](https://github.com/ur4ltz/surround.nvim),
[tpope Repeat](https://github.com/tpope/vim-repeat),
[nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua),
[toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim),
[vim-commentary](https://github.com/tpope/vim-commentary),
[nvim-spectre](https://github.com/windwp/nvim-spectre),
[telescope.nvim](https://github.com/vim-telescope/telescope.nvim),
[telescope-symbols.nvim](https://github.com/vim-telescope/telescope-symbols.nvim),
[git-signs.nvim](https://github.com/lewis6991/gitsigns.nvim),
[todo-comments.nvim](https://github.com/folke/todo-comments.nvim),
[which-key.nvim](https://github.com/folke/which-key.nvim),

# License
itsnexn/nvim is licensed under the [MIT license](LICENSE).
