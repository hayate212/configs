local keymap = vim.keymap

vim.g.mapleader = ' '

keymap.set({ 'n', 'x' }, '<Space>', '<Nop>')
keymap.set('n', ';', ':')

-- jj で esc
keymap.set('i','jj','<Esc>')

-- 画面分割
keymap.set('n', '<Leader>¥', ':vsplit<Return><C-w>w')

-- アクティブウィンドウの移動
keymap.set('', '<Leader>l', '<C-w>l')
keymap.set('', '<Leader>h', '<C-w>h')

-- ALT+右矢印で次の単語の始まりに移動
vim.api.nvim_set_keymap('n', '<A-Right>', 'w', {noremap = true, silent = true})
-- ALT+左矢印で前の単語の始まりに移動
vim.api.nvim_set_keymap('n', '<A-Left>', 'b', {noremap = true, silent = true})
