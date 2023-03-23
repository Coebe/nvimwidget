vim.g.mapleader = " "
--- @param "n" -> normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)


vim.keymap.set("n", "<leader>s", function ()
	vim.cmd("so")
end)