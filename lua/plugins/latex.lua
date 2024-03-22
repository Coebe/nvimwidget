-- about latex plugin
return {
    {
        "lervag/vimtex",
        -- enabled = false,
    },
    --[[
      - vimtex
        - compile files currently
        - transparent, let file compile result show in the background
      - knap(but only fluently use on linux/mac)
        - real-time compile
      - luasnip
        - powerful snip plugin

    --]]
    --
    {
        "preservim/vim-markdown",
    },
    -- install without yarn or npm
    {
        "iamcco/markdown-preview.nvim",
        cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
        ft = { "markdown" },
        build = function()
            vim.fn["mkdp#util#install"]()
        end,
    },
}
--[[
  - markdown
    - support KeTex
  - code
    - code runner
    - dap
      -  can debugging
--]]
