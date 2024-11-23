local k = vim.keymap

-- window movement
k.set('n', '<C-h>', '<C-w>h')
k.set('n', '<C-l>', '<C-w>l')

--search
k.set('n', '<leader>/', ':noh<CR>')

--nvim tree
k.set('n', '<leader>e', ':NvimTreeToggle<CR>')

--clang
k.set('n', '<leader>sh', ':ClangdSwitchSourceHeader<CR>')

--code folding
k.set('n', '<leader>zf', 'v%zf')
