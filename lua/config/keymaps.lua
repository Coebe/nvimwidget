-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
vim.g.mapleader = " "
--local opt = { noremap = true, silent = true }

---- @param "n" -> normal mode
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<C-c>", "<Esc>")

-- vim.keymap.set("n", "<leader>ps", function()
--     vim.cmd("so")
-- end, { desc = '[P]roject [S]ource' })

------------------------------------------------------------
-----                     coding                       -----
------------------------------------------------------------
-- move select line or code up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- let cursor always show middle of the window
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- paste & yank
-- purpose is keep the last yank phrase/sth
vim.keymap.set("x", "<leader>p", '"_dP')
-- copy/paste things to system clipboard
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')

--- project
-- to open other projects
vim.keymap.set("n", "<leader>c", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", function()
  vim.lsp.buf.format()
end)

------------------------------------------------------------
-----                   window & tab                   -----
------------------------------------------------------------
-- switch window
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
-- close window
vim.keymap.set("n", "<C-q>", "<C-w>q")

------------------------------------------------------------
-----              about tab switch/buffer             -----
------------------------------------------------------------
-- switch prev & next tab
-- cmd :help tab to explor more
--vim.keymap.set("n", "<C-h>", "gT", opt)
--vim.keymap.set("n", "<C-l>", "gt", opt)

--vim.keymap.set("n", "<C-wh>", "<C-w>h", opt)
