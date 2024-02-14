local mason_null_ls = require('mason-null-ls')
mason_null_ls.setup({
  ensure_installed = { 'prettier' },
  automatic_installation = true,
})
