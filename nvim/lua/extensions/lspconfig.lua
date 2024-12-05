local nvim_lsp = require('lspconfig')
local servers = {
  'gopls',
  'ts_ls',
  'lua_ls',
  'biome',
  'rust_analyzer',
}

for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup({
    flags = {
      debounce_text_changes = 150
    },
  })
end

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
    local bufopts = { noremap = true, silent = true, buffer = ev.buf }
    -- builtin lsp
    -- rename
    vim.keymap.set('n', '<F2>', vim.lsp.buf.rename, bufopts)
    -- Alt+Shift+F でフォーマット
    vim.keymap.set('n', '<A-S-f>', vim.lsp.buf.format, bufopts)
    -- F11 で定義ジャンプ
    vim.keymap.set('n', '<F11>', ':Lspsaga goto_definition<CR>', bufopts)
  end
})

nvim_lsp.gopls.setup({
  -- settings = { gopls = {}}
})

nvim_lsp.lua_ls.setup({
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' },
      },
      format = {
        enable = true,
        defaultConfig = {
          ident_style = 'space',
          ident_size = '4'
        }
      }
    }
  }
})

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
