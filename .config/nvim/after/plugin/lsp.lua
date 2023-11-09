local lsp_zero = require('lsp-zero')

lsp_zero.preset("recommended")

require('mason').setup({})
  require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'eslint', 'gopls', 'rust_analyzer'},
    handlers = {
      lsp_zero.default_setup,
    },
  })

local cmp = require('cmp')
local comp_select = {behavior = cmp.SelectBehavior.Select}

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)
