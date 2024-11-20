local k = vim.keymap

-- window movement
k.set('n', '<C-h>', '<C-w>1w')
k.set('n', '<C-l>', '<C-w>9w')

--search
k.set('n', '<leader>/', ':noh<CR>')

--nvim tree
k.set('n', '<leader>e', ':NvimTreeToggle<CR>')

--clang
k.set('n', '<leader>sh', ':ClangdSwitchSourceHeader<CR>')
