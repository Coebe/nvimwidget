print("hi, remap is loaded.")

vim.g.mapleader = " "
local opt = { noremap = true, silent = true }

---- @param "n" -> normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)

vim.keymap.set("n", "<leader>s", function()
	vim.cmd("so")
end)

-- about tab switch/buffer
-- switch prev & next tab
-- cmd :help tab to explor more
vim.keymap.set("n", "<C-h>", "gT", opt)
vim.keymap.set("n", "<C-l>", "gt", opt)

-- window
--vim.keymap.set("n", "<C-wh>", "<C-w>h", opt)

