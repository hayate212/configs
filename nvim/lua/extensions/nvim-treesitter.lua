require('nvim-treesitter.configs').setup({
  autotag = {
    enable = true,
  },
  ensure_installed = {
    'typescript',
    'tsx',
  },
  highlight = {
    enable = true,
  },
})
