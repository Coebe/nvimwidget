require("aaroncode.remap")
require("aaroncode.set")
print("hello from aaroncode")

--[[
require('telescope.builtin').find_files({
	-- specific the search content(directory)
	prompt_title = '~/.config',
})

require('packer').init({
	git = {
		default_url_format = 'git@github.com:%s'
	}
})
]]
