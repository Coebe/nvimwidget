return {
    {
        "preservim/nerdtree",
        config = function()
            vim.keymap.set("n", "<C-n>", ":NERDTree<CR>")
            vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>")
            vim.keymap.set("n", "<leader>N", ":NERDTreeToggle<CR>")
            vim.keymap.set("n", "<leader>nf", ":NERDTreeFind<CR>")
        end,
    },
    {
        "nvim-tree/nvim-tree.lua",
        version = "*",
        enabled = false,
        dependencies = {
            'nvim-tree/nvim-web-devicons', -- optional
        },
        config = function()
            -- require("nvim-tree").setup {}
            -- vim.keymap.set("n", "<C-n>", ":NvimTreeOpen<CR>")
        end,
        keys = {
            { "<C-n>",      ":NvimTreeToggle<CR>", desc = "Open or close the tree" },
            { "<leader>nn", ":NvimTreeFocus<CR>",  desc = "Open tree if it's closed, and then focus on the tree" },
            {
                "<leader>nf",
                ":NvimTreeFindFile<CR>",
                desc = "Move the cursor in the tree for the cur buffer, opening folders if needed"
            },
        },
    }
}

