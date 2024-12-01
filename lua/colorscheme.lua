-- vim.cmd('colorscheme catppuccin-macchiato') vim.cmd.colorscheme('solarized')
-- vim.cmd('colorscheme github_light')
-- vim.o.background = 'light' -- or "light" for light mode
-- vim.cmd([[colorscheme gruvbox]])
-- vim.cmd([[colorscheme meh]])

vim.cmd("colorscheme ycm_minimal_colors")

local pastel_green = "#f4f9f2"
local pastel_pink = '#F8F2FA'
local color = pastel_pink

vim.api.nvim_set_hl(0, "CustomTerminalShading", {
    bg = color,
    -- fg = '#000000',
})
vim.api.nvim_create_augroup("_terminal", { clear = true })
vim.api.nvim_create_autocmd("TermOpen",
    { command = "setlocal winhighlight=Normal:CustomTerminalShading", group = "_terminal", })
