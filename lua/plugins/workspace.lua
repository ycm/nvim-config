vim.api.nvim_create_augroup("MyVimEnterGroup", { clear = true })

vim.api.nvim_create_autocmd("VimEnter", {
	group = "MyVimEnterGroup",
	nested = true,
	callback = function()

        local arg = os.getenv("NVIM_OPEN_MOST_RECENT")
        if not arg then
            return
        end
		vim.cmd("NvimTreeOpen")

        

		local oldfiles = vim.v.oldfiles
		local cwd = vim.fn.getcwd()
		if oldfiles and #oldfiles > 0 then
			for _, file in ipairs(oldfiles) do
				if vim.fn.filereadable(file) == 1 and string.sub(file, 1, #cwd) == cwd then
					vim.cmd("edit " .. vim.fn.fnameescape(file))
					break
				end
			end
		else
			print("No oldfiles found.")
		end



	end,
})

return {}
