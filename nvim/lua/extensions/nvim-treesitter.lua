require('nvim-treesitter.configs').setup({
  autotag = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  ensure_installed = {
    'typescript',
    'tsx',
    'html',
    'css',
    'lua',
    'json',
    'yaml',
    'toml',
  },
  highlight = {
    enable = true,
  },
})
