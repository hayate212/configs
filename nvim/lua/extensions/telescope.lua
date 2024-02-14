require('telescope').setup {
  defaults = {
    file_ignore_patterns = { 'node_modules' },
  }
}

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<Leader>p', builtin.find_files, {})
