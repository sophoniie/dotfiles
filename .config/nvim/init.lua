-- define leader to space
vim.g.mapleader = ' '

require('config.settings')
require('config.mappings')
require("config.lazy")
require("config.completion")
require("config.lsp")

local lsp_configs = vim.fn.stdpath("config") .. "/lsp"
for _, file in ipairs(vim.fn.glob(lsp_configs .. "/*.lua", true, true)) do
	local name = vim.fn.fnamemodify(file, ":t:r")
	local config = dofile(file)
	if config then
		vim.lsp.enable(name, config)
	end
end
