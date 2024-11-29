local smart_switch = {}

function smart_switch.smart_switch(key)
    local mode = vim.api.nvim_get_mode().mode
    local buftype = vim.bo.buftype

    if mode == 'i' then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, true, true), "i", true)
    end
    if buftype == 'terminal' and mode == 't' then
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('<C-\\><C-n>', true, true, true), 'n', true)
    end
    vim.cmd('wincmd ' .. key)
    buftype = vim.bo.buftype
    if buftype == 'terminal' then
        -- for some reason startinsert doesn't work here
        vim.api.nvim_feedkeys('i', 'n', true)
    end
end

return smart_switch
