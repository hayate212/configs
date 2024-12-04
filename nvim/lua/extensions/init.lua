local plugins = {
  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function() require 'extensions.nvim-treesitter' end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function() require 'extensions.tokyonight' end,
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
    cmd = { 'Telescope' },
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
  {
    'windwp/nvim-ts-autotag',
    config = function() require 'extensions.autotag' end,
  },
  {
    'neovim/nvim-lspconfig',
  },
  {
    'williamboman/mason.nvim',
    config = function() require 'extensions.mason' end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function() require 'extensions.mason-lspconfig' end,
  },
  {
    'jose-elias-alvarez/null-ls.nvim',
    config = function() require 'extensions.null-ls' end,
  },
  {
    'jayp0521/mason-null-ls.nvim',
    config = function() require 'extensions.mason-null-ls' end,
  },
  {
    'hrsh7th/nvim-cmp',
    config = function() require 'extensions.nvim-cmp' end,
  },
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  {
    'ray-x/lsp_signature.nvim',
    config = function() require 'extensions.lsp-signature' end,
  },
  'onsails/lspkind-nvim',
  'L3MON4D3/LuaSnip',
  'f-person/git-blame.nvim',
  {
    'lewis6991/gitsigns.nvim',
    config = function() require 'extensions.gitsigns' end,
  },
  {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function() require 'extensions.hlchunk' end,
  },
}

local opts = {
  defaults = { lazy = true },
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
