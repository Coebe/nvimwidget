require("aaroncode")
print("hello")
--[[
-- 自动安装/更新 Packer.nvim 插件管理器
local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
	vim.cmd('packadd packer.nvim')
end
]]
