--[[
-- Preview:
-- TODO: some todo text
-- WARN: some warning text
--    WARNING:
--    HACK:
-- PERF: some perf text
-- NOTE: some note text
--   INFO:
-- TEST: some test text
-- FIX: some fix text
-- DEBUG: some debug text
--]]

return {
    'folke/todo-comments.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
        keywords = {
            FIX = {
                icon = ' ', -- icon used for the sign, and in search results
                color = 'error', -- can be a hex color, or a named color (see below)
                alt = { 'FIXME', 'BUG', 'FIXIT', 'ISSUE' }, -- a set of other keywords that all map to this FIX keywords
                -- signs = false, -- configure signs for some keywords individually
            },
            TODO = { icon = '󰏪', color = 'custom_todo' },
            HACK = {
                icon = '󰇥 ',
                color = 'custom_warn',
            },
            WARN = {
                icon = ' ',
                color = 'custom_warn',
                alt = { 'WARNING', 'XXX' },
            },
            PERF = {
                icon = '󰋑',
                color = 'custom_perf',
                alt = { 'OPTIM', 'PERFORMANCE', 'OPTIMIZE' },
            },
            NOTE = { icon = '󰋼', color = 'custom_hint', alt = { 'INFO' } },
            TEST = {
                icon = '󰳪',
                color = 'custom_test',
                alt = { 'TESTING', 'PASSED', 'FAILED' },
            },
            DEBUG = {
                icon = '󰃤',
                color = 'custom_debug',
                alt = { 'LOGGING', 'LOG' },
            },
        },
        colors = {
            error = { 'DiagError', 'ErrorMsg', '#DC2626' },
            custom_todo = { 'DiagTodo', '#2563EB' },
            custom_warn = { 'DiagWarn', '#B34D00' },
            custom_perf = { 'DiagPerf', '#467D1C' },
            custom_test = { 'DiagTest', '#7D2E68' },
            custom_hint = { 'DiagHint', '#5E5E5E' },
            custom_debug = { 'DiagDebug', '#C800FF' },
            default = { 'Identifier', '#7C3AED' },
        },
    },
}
