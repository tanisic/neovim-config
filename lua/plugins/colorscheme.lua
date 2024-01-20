return {
  -- add gruvbox
  -- { "folke/tokyonight.nvim", opts = {}, lazy = false, priority = 1000, config = false },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "kanagawa-wave",
    },
  },

  { "rebelot/kanagawa.nvim", lazy = false, config = true, priority = 1000 },
  -- { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },
}
