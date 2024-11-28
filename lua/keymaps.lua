local k = vim.keymap
local ss = require('smart_switch')

-- smart window movement
k.set({ 'n', 't' }, '<C-h>', function() ss.smart_switch('h') end, { noremap = true })
k.set({ 'n', 't' }, '<C-j>', function() ss.smart_switch('j') end, { noremap = true })
k.set({ 'n', 't' }, '<C-k>', function() ss.smart_switch('k') end, { noremap = true })
k.set({ 'n', 't' }, '<C-l>', function() ss.smart_switch('l') end, { noremap = true })

--clear search highlight
k.set('n', '<leader>/', ':noh<CR>')

--nvim tree
k.set('n', '<leader>e', ':NvimTreeToggle<CR>')

--clang
k.set('n', '<leader>sh', ':ClangdSwitchSourceHeader<CR>')

--code folding
k.set('n', '<leader>zf', 'v%zf')

--terminal split
k.set('n', '<leader>th', ':vsplit | term<cr>i')
k.set('n', '<leader>tj', ':belowright split | term<cr>i')
k.set('n', '<leader>tk', ':split | term<cr>i')
k.set('n', '<leader>tl', ':belowright vsplit | term<cr>i')

--terminal escape
k.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })
