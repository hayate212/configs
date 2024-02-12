local plugins = {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
  },
  {
    'rmehri01/onenord.nvim',
    priority = 1000,
    config = function() require 'extensions.onenord' end,
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require 'extensions.lualine' end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function() require 'extensions.nvim-tree' end,
  },
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function() require 'extensions.telescope' end,
  },
  {
    'akinsho/toggleterm.nvim', version = '*',
    config = function() require 'extensions.toggleterm' end,
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    opts = function() require 'extensions.autopairs' end,
  },
}

local opts = {
  checker = { enabled = true, },
  reset_packpath = true,
  rtp = {
    reset = true,
    paths = {},
    disabled_plugins = {
      'gzip',
      'matchit',
      'tarPlugin',
      'tohtml',
      'tutor',
      'zipPlugin',
    },
  },
}

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable',
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup(plugins, opts)
require 'extensions.toggleterm'
