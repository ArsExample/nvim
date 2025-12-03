vim.wo.number = true
vim.wo.relativenumber = true
vim.opt.number = true
vim.opt.relativenumber = true

-- vim.opt.shell = "bin/zsh"

vim.opt.mouse = "a"
vim.opt.mousefocus = false

vim.opt.clipboard = "unnamedplus"

vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.smartindent = true

vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.api.nvim_set_hl(0, 'Normal', { bg = 'NONE' }) -- прозрачный задний фон
vim.opt.showmode = false

-- дальше настраиваем цвета отдельных элементов

-- NeoTree
--vim.api.nvim_set_hl(0, 'NeoTreeFloatBorder', { fg = '#ffffff', bg = '#222222' })
--vim.api.nvim_set_hl(0, 'NeoTreeFloatTitle', { fg = '#ffffff', bg = '#333333' })
vim.api.nvim_set_hl(0, 'NeoTreeTitleBar', { fg = '#ffffff', bg = '#444444' })

-- Lsp
vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'NONE' })
vim.api.nvim_set_hl(0, 'FloatBorder', { bg = 'NONE', fg = '#ffffff' })
