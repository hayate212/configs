require('tokyonight').setup {
  style = 'storm',
  transparent = true,
  styles = {
    sidebars = 'transparent',
    floats = 'transparent',
  }
}

-- カラースキームの適用
vim.cmd[[colorscheme tokyonight]]
