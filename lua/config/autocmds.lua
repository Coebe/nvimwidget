local function augroup(name)
    return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- TODO: 'BufLeave' will got a bug(traceback)
-- vim.api.nvim_create_autocmd({ "FocusLost", "BufLeave" }, {
vim.api.nvim_create_autocmd({ "FocusLost" }, {
    group = augroup("save"),
    callback = function()
        vim.cmd("w")
    end,
})
