local util = require("conform.util")
return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")
    conform.setup({
      ---@type table<string, conform.FormatterUnit[]>
      formatters_by_ft = {
        javascript = { "prettier" },
        typescript = { "prettier" },
        javascriptreact = { "prettier", "rustywind" },
        typescriptreact = { "prettier", "rustywind" },
        svg = { "svgFormatter" },
        svelte = { "prettier" },
        css = { "prettier" },
        html = { "prettier", "rustywind" },
        json = { "prettier" },
        yaml = { "prettier" },
        markdown = { "prettier" },
        graphql = { "prettier" },
        lua = { "stylua" },
        python = { "isort", "black" },
      },
      formatters = {
        svgFormatter = {
          url = "https://github.com/prettier/prettier",
          description = [[Prettier is an opinionated code formatter. It enforces a consistent style by parsing your code and re-printing it with its own rules that take the maximum line length into account, wrapping code when necessary.]],
          command = util.from_node_modules("prettier"),
          args = { "--parser", "html", "--stdin-filepath", "$FILENAME" },
          range_args = function(ctx)
            local start_offset, end_offset = util.get_offsets_from_range(ctx.buf, ctx.range)
            return { "$FILENAME", "--range-start=" .. start_offset, "--range-end=" .. end_offset }
          end,
          cwd = util.root_file({
            ".prettierrc",
            ".prettierrc.json",
            ".prettierrc.yml",
            ".prettierrc.yaml",
            ".prettierrc.json5",
            ".prettierrc.js",
            ".prettierrc.cjs",
            ".prettierrc.toml",
            "prettier.config.js",
            "prettier.config.cjs",
            "package.json",
          }),
        },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        quiet = false,
        timeout_ms = 3000,
      },
    })
    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        quiet = false,
        timeout_ms = 3000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}
