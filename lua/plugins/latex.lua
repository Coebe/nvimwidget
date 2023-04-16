-- about latex plugin
if true then
    return {
        {
            "lervag/vimtex",
            enabled = false,
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
    }
end
--[[
  - markdown
    - support KeTex
  - code
    - code runner
    - dap
      -  can debugging
--]]
