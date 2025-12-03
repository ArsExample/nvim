--vim.lsp.enable("pyright")
--vim.lsp.enable("clangd")
--vim.lsp.enable("tsserve")
--
local lspconfig = require('lspconfig')

lspconfig.pyright.setup {}
lspconfig.rust_analyzer.setup({
  settings = {
    ['rust-analyzer'] = {
      -- Включаем встроенные диагностики (обновляются при наборе)
      diagnostics = {
        enable = true,
        -- Включаем экспериментальные диагностики для большего покрытия
        enableExperimental = true,
      },
      -- Настраиваем проверку при сохранении, чтобы не конфликтовала с вашим workflow
      checkOnSave = {
        enable = true,
        command = "clippy", -- Можно использовать "check" или "clippy"
      },
    },
  },
})
lspconfig.ts_ls.setup {}
lspconfig.clangd.setup {}

vim.diagnostic.config({
  virtual_text = false,
  update_in_insert = true,  
  underline = true,
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN]  = " ",
      [vim.diagnostic.severity.INFO]  = " ",
      [vim.diagnostic.severity.HINT]  = " ",
    }
  },

  float = {
    source = false,    -- Показывать источник только если есть несколько
	border = "rounded"
  },
})


vim.keymap.set('n', '<leader>ld', vim.diagnostic.open_float)
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev)
vim.keymap.set('n', ']d', vim.diagnostic.goto_next)

-- тут надо будет добавить бинды для автоимплементации, перейти к сигнатуре и тд

