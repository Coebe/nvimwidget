-- session
vim.opt.sessionoptions = "buffers,curdir,folds,help,tabpages,winsize,winpos,terminal"
--vim.opt.guicursor = ""
vim.opt.guifont = "Fira_Code_Font"

vim.opt.number = true
-- Make line numbers default
vim.wo.number = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

-- Set highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 3

vim.opt.encoding = "UTF-8"

-- [[ Setting options ]]
-- See `:help vim.o`

-- Enable mouse mode
vim.o.mouse = "a"

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.o.clipboard = "unnamedplus"

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = "yes"

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menuone,noselect"

-- NOTE: You should make sure your terminal supports this
-- vim.o.termguicolors = true
