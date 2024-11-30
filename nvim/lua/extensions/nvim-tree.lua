require('nvim-tree').setup {}

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { silent = true, noremap = true })

vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})
