return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local harpoon = require('harpoon')
        harpoon.setup()
        local k = vim.keymap

        k.set('n', '<leader>hl', function()
            harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = 'Open harpoon window' })

        k.set('n', '<leader>ha', function()
            harpoon:list():add()
            print('Added to harpoon list: ' .. vim.fn.expand('%:t'))
        end, { desc = 'Add to harpoon list' })
    end,
}
