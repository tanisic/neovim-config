return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = function()
      vim.api.nvim_command("colorscheme gruvbox")
    end,
  },
}
