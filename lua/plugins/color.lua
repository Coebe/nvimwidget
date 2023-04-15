if true then
  return {
    "rose-pine/neovim",
    config = function()
      vim.cmd.colorscheme("rose-pine")

      --- @param just for the global space
      --- @param
      vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  }
end
