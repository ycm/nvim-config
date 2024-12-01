local k = vim.keymap
local ss = require('smart_switch')

--[[
smart(er) window movement
    functionality:
        currently in INSERT mode: exits into NORMAL mode and jumps windows
        currently in NORMAL mode: jumps windows as usual
        currently in NORMAL mode in a terminal buffer: jumps windows as usual
        currently in TERMINAL mode in a terminal buffer: exits into NORMAL mode and jumps windows

        finally, if jumping INTO a terminal buffer, enters TERMINAL mode.
--]]
k.set({ 'i', 'n', 't' }, '<C-h>', function() ss.smart_switch('h') end, { noremap = true })
k.set({ 'i', 'n', 't' }, '<C-j>', function() ss.smart_switch('j') end, { noremap = true })
k.set({ 'i', 'n', 't' }, '<C-k>', function() ss.smart_switch('k') end, { noremap = true })
k.set({ 'i', 'n', 't' }, '<C-l>', function() ss.smart_switch('l') end, { noremap = true })

--clear search highlight
k.set('n', '<leader>/', ':noh<CR>')

--nvim tree
k.set('n', '<leader>e', ':NvimTreeToggle<CR>')

--clang
k.set('n', '<leader>sh', ':ClangdSwitchSourceHeader<CR>')

--code folding
k.set('n', '<leader>zf', 'v%zf')

--terminal split
k.set('n', '<leader>th', ':vsplit | term<cr>:vertical resize 60<cr>i')
k.set('n', '<leader>tj', ':belowright split | term<cr>:resize 12<cr>i')
k.set('n', '<leader>tk', ':split | term<cr>:resize 12<cr>i')
k.set('n', '<leader>tl', ':belowright vsplit | term<cr>:vertical resize 60<cr>i')

--terminal escape
k.set('t', '<Esc>', [[<C-\><C-n>]], { noremap = true })

--format
k.set('n', '<leader>gf', vim.lsp.buf.format, {})

--save and format (don't explicitly exit insert mode)
k.set({ 'n', 'i', 't' }, '<C-s>', function()
    if vim.bo.buftype ~= 'terminal' then
        vim.cmd(':w')
        vim.lsp.buf.format()
    end
end, {})
