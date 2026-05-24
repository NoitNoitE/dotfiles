-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
--theme
require("kanagawa").load("wave")
-- formatting
vim.cmd([[autocmd FileType * set tabstop=4 softtabstop=4 shiftwidth=4 noexpandtab]])
vim.g.autoformat = false
