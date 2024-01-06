vim.api.nvim_create_autocmd("FileType", {
	pattern = "tsx",
	command = "setlocal shiftwidth=2 tabstop=2"
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = "ts",
	command = "setlocal shiftwidth=2 tabstop=2"
})
