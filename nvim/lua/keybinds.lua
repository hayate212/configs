local keymap = vim.keymap

vim.g.mapleader = ' '

-- jj で esc
keymap.set('i','jj','<Esc>')

-- 画面分割
keymap.set('n', '<Leader>¥', ':vsplit<Return><C-w>w')

-- アクティブウィンドウの移動
keymap.set('', '<Leader>l', '<C-w>l')
keymap.set('', '<Leader>h', '<C-w>h')
