-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
if vim.g.vscode then
	-- VSCode extension
	vim.o.clipboard = 'unnamedplus'
else
	-- ordinary Neovim
	require("kanagawa").load("wave")
	vim.cmd([[autocmd FileType * set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab]])
	vim.g.autoformat = false
end
