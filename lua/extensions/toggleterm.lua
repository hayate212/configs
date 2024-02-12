if vim.fn.has('mac') == 1 then 
  require('toggleterm').setup {
    shell = 'fish'
  }
end

if vim.fn.has('wsl') == 1 then
  require('toggleterm').setup {
    shell = 'bash'
  }
end

vim.keymap.set('n', '<Leader>`', ':ToggleTerm<CR>', {})
