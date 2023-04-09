print("hi~ here is telescope init.")
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>gf', builtin.git_files, {})
vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {})
vim.keymap.set('n', '<leader>gst', builtin.git_status, {})
--- <C-d>,<C-u> scroll preview window down and up
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

--[[
builtin.find_files({
	cwd = utils.buffer_dir(),
})
]]
