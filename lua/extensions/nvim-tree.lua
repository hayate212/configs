require('nvim-tree').setup {}

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { silent=true })
