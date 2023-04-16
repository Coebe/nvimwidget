-- change some telescope options and a keymap to browse plugin files
return {
    "nvim-telescope/telescope.nvim",
    keys = {
        -- add a keymap to browse plugin files
        -- stylua: ignore
        -- {
        --   "<leader>fp",
        --   function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
        --   desc = "Find Plugin File",
        -- },
    },
    config = function()
        local builtin = require("telescope.builtin")
        --- <C-d>,<C-u> scroll preview window down and up
        -- Enable telescope fzf native, if installed
        pcall(require("telescope").load_extension, "fzf")

        -- See `:help telescope.builtin`
        vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "[F]iles [R]ecent" })
        vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "[ ] Find existing buffers" })
        vim.keymap.set("n", "<leader>/", function()
            -- You can pass additional configuration to telescope to change theme, layout, etc.
            builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
                winblend = 10,
                previewer = false,
            }))
        end, { desc = "[/] Fuzzily search in current buffer" })

        -- vim.keymap.set('n', '<leader>sf', builtin.find_files, { desc = '[S]earch [F]iles' })
        vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
        vim.keymap.set(
            "n",
            "<leader>sw",
            builtin.grep_string, --({ search = vim.fn.input("Grep > ") })
            { desc = "[S]earch current [W]ord" }
        )
        -- vim.keymap.set('n', '<leader>ps', function()
        --     builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end)
        vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
        vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
        vim.keymap.set("n", "<leader>pf", builtin.find_files, { desc = "[P]roject [F]iles" })
        vim.keymap.set("n", "<leader>gf", builtin.git_files, { desc = "[G]it [F]iles" })
        vim.keymap.set("n", "<leader>pr", builtin.lsp_references, { desc = "[P]ameter [R]eferences" })
        vim.keymap.set("n", "<leader>gst", builtin.git_status, { desc = "[G]it [S]ta[T]us" })
    end,
    -- change some options
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = { prompt_position = "top" },
            sorting_strategy = "ascending",
            winblend = 0,
            mappings = {
                i = {
                    ["<C-u>"] = false,
                    ["<C-d>"] = false,
                },
            },
        },
    },
}
