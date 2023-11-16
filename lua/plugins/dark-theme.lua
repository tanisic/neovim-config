return {
  {
    "folke/tokyonight.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.api.nvim_command("colorscheme tokyonight-storm")
    end,
  },
}
