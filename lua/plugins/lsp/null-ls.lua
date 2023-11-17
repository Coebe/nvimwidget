return {
    "nvimtools/none-ls.nvim",
    enabled = false,
    opts = function()
        local nls = require("null-ls")
        local formatting = nls.builtins.formatting
        local linter = nls.builtins.diagnostics
        return {
            sources = {
                formatting.prettier.with({
                    extra_args = {
                        -- "--double-quote",
                        "--single-quote",
                    },
                }),
            },
        }
    end,
}
