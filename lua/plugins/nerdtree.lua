if true then
    return {
        "preservim/nerdtree",
        config = function()
            vim.keymap.set("n", "<C-n>", ":NERDTree<CR>")
            vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>")
            vim.keymap.set("n", "<leader>N", ":NERDTreeToggle<CR>")
            vim.keymap.set("n", "<C-f>", ":NERDTreeFind<CR>")
        end,
    }
end
