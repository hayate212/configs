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
-- tab
-- タブを新しく開く
vim.api.nvim_set_keymap('n', '<Leader>N', ':tabnew<CR>', { noremap = true, silent = true })

-- 次のタブに移動
vim.api.nvim_set_keymap('n', '<Leader><S-Left>', ':tabnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>L', ':tabnext<CR>', { noremap = true, silent = true })

-- 前のタブに移動
vim.api.nvim_set_keymap('n', '<Leader><S-Right>', ':tabprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>H', ':tabprevious<CR>', { noremap = true, silent = true })

-- 現在のタブを閉じる
vim.api.nvim_set_keymap('n', '<Leader>W', ':tabclose<CR>', { noremap = true, silent = true })

-- Telescope find_files
vim.keymap.set('n', '<Leader>p', ':Telescope find_files<CR>', {noremap = true, silent = true })
-- F12 でコードリファレンス
vim.keymap.set('n', '<F12>', ':Telescope lsp_references<CR>', {noremap = true, silent = true })
