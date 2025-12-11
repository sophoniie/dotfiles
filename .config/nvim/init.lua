-- define leader to space
vim.g.mapleader = ' '

require('config.settings')
require('config.mappings')
require("config.lazy")
require("config.completion")
require("config.lsp")

vim.lsp.enable('ts_ls')
vim.lsp.enable('lua_ls')
vim.lsp.enable('prismals')
