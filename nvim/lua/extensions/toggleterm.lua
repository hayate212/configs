require('toggleterm').setup {
  open_mapping = [[<C-\>]],
  start_insert = true,
}

vim.api.nvim_set_keymap('t', [[<C-\>]], [[<C-\><C-n>:ToggleTerm<CR>]], { noremap = true, silent = true })
