-- local util = require("conform.util")
-- ---@type conform.FileFormatterConfig
-- local biome = {
--   meta = {
--     url = "https://github.com/biomejs/biome",
--     description = "A toolchain for web projects, aimed to provide functionalities to maintain them.",
--   },
--   command = util.from_node_modules("biome"),
--   stdin = true,
--   args = { "format", "--stdin-file-path", "$FILENAME" },
--   cwd = util.root_file({
--     "biome.json",
--     "biome.jsonc",
--   }),
-- }

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  opts = {
    formatters = {
      biome = { required_cwd = true },
    },
    formatters_by_ft = {
      javascript = { "biome", "prettierd", "prettier", stop_after_first = true },
      typescript = { "biome", "prettierd", "prettier", stop_after_first = true },
      javascriptreact = { "biome", "rustywind" },
      typescriptreact = { "biome", "rustywind" },
      svg = { "svgFormatter" },
      svelte = { "biome" },
      css = { "biome" },
      html = { "biome", "prettier", "rustywind" },
      json = { "biome" },
      yaml = { "biome" },
      markdown = { "biome" },
      graphql = { "biome" },
      lua = { "stylua" },
      python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
    },
    format_on_save = {
      lsp_fallback = true,
      async = false,
      quiet = false,
      timeout_ms = 3000,
    },
  },
}
