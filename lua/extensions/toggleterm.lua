require('toggleterm').setup {
  shell = 'bash'
}

vim.keymap.set('n', '<Leader>`', ':ToggleTerm<CR>', {})
