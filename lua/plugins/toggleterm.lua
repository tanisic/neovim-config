return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    cmd = "ToggleTerm",
    build = ":ToggleTerm",
    keys = { { "<F2>", "<cmd>ToggleTerm<cr>", desc = "Toggle floating terminal window" } },
    opts = {
      open_mapping = [[<F2>]],
      direction = "float",
      hide_numbers = true,
      insert_mappings = true,
      terminal_mappings = true,
      start_in_insert = true,
      close_on_exit = true,
    },
  },
}
