return {
    {
        "folke/todo-comments.nvim",
        cmd = { "TodoTrouble", "TodoTelescope" },
        event = "LazyFile",
        config = function()
            map("n", "]t", function()
                require("todo-comments").jump_next()
            end, { desc = "Next todo comment" })
            map("n", "[t", function()
                require("todo-comments").jump_prev()
            end, { desc = "Previous todo comment" })
            map("n", "<leader>xt", "<cmd>TodoTrouble<CR>", { desc = "Todo (Trouble)" })
            map(
                "n",
                "<leader>xT",
                "<cmd>TodoTrouble keywords=TODO,FIX,FIXME<CR>",
                { desc = "Todo/Fix/Fixme (Trouble)" }
            )
            map("n", "<leader>st", "<cmd>TodoTelescope<CR>", { desc = "Todo" })
            map("n", "<leader>sT", "<cmd>TodoTelescope keywords=TODO,FIX,FIXME<CR>", { desc = "Todo/Fix/Fixme" })
        end,
    },
}
