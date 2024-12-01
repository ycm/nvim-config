-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
--

vim.opt.termguicolors = true

vim.cmd('set expandtab')
vim.cmd('set tabstop=4')
vim.cmd('set softtabstop=4')
vim.cmd('set shiftwidth=4')

vim.g.mapleader = ' '

vim.cmd('set number')
-- vim.cmd('set relativenumber')
vim.cmd('set signcolumn=yes')

-- cursor
vim.cmd('set cursorline')
vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20"

-- system clipboard
vim.cmd('set clipboard=unnamedplus')
