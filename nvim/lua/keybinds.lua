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
-- 現在の行と上の行を入れ替え
vim.api.nvim_set_keymap('n', '<A-Up>', ':m .-2<CR>==', { noremap = true, silent = true })
-- 現在の行と下の行を入れ替え
vim.api.nvim_set_keymap('n', '<A-Down>', ':m .+1<CR>==', { noremap = true, silent = true })

vim.keymap.set({ 'n' }, '<A-S-f>', vim.lsp.buf.format)

vim.keymap.set({ 'n' }, '<F12>', '<Cmd>Telescope lsp_references<CR>')

-- tab
-- タブを新しく開く
vim.api.nvim_set_keymap('n', '<Leader>N', ':tabnew<CR>', { noremap = true, silent = true })

-- 次のタブに移動
vim.api.nvim_set_keymap('n', '<Leader><S-Left>', ':tabnext<CR>', { noremap = true, silent = true })

-- 前のタブに移動
vim.api.nvim_set_keymap('n', '<Leader><S-Right>', ':tabprevious<CR>', { noremap = true, silent = true })

-- 現在のタブを閉じる
vim.api.nvim_set_keymap('n', '<Leader>W', ':tabclose<CR>', { noremap = true, silent = true })

