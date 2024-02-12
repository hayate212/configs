vim.api.nvim_set_option('termguicolors', true)
vim.api.nvim_set_option('scrolloff', 4)

-- window
vim.api.nvim_win_set_option(0, 'number', true)
vim.api.nvim_win_set_option(0, 'cursorline', true)
vim.api.nvim_win_set_option(0, 'wrap', false)

-- buffer
vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWinEnter' }, {
	pattern = '*',
	group = vim.api.nvim_create_augroup('buffer_set_options', {}),
	callback = function()
		vim.api.nvim_buf_set_option(0, 'tabstop', 2)
		vim.api.nvim_buf_set_option(0, 'expandtab', true)
		vim.api.nvim_buf_set_option(0, 'shiftwidth', 0)
	end
})
