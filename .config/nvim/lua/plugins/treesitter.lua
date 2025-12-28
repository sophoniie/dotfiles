return {
  "nvim-treesitter/nvim-treesitter",
  branch = 'master',
  lazy = false,
  build = ":TSUpdate",
  config = function ()
	local configs = require('nvim-treesitter.configs')

	configs.setup({
		ensure_installed = { "rust", "zig", "c", "lua", "vim", "vimdoc", "php", "markdown", "markdown_inline", "typescript", "javascript", "html", "css" },
		sync_install = false,
		highlight = {
			enable = true,
		},
		indent = {
			enable = true,
		},
	})

	-- vim.opt.foldmethod = "expr"
	-- vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
  end
}


