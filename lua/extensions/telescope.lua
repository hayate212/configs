require('telescope').setup {

}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>p', builtin.find_files, {})
