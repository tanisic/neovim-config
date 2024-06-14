return {
  "neovim/nvim-lspconfig",
  opts = {
    -- make sure mason installs the server
    servers = {
      tsserver = {
        enabled = false,
      },
      vtsls = {
        settings = {
          complete_function_calls = true,
          vtsls = {
            enableMoveToFileCodeAction = true,
            experimental = {
              completion = {
                enableServerSideFuzzyMatch = true,
              },
            },
          },
          typescript = {
            updateImportsOnFileMove = { enabled = "always" },
            suggest = {
              completeFunctionCalls = true,
            },
            inlayHints = {
              enumMemberValues = { enabled = true },
              functionLikeReturnTypes = { enabled = false },
              parameterNames = { enabled = false },
              parameterTypes = { enabled = false },
              propertyDeclarationTypes = { enabled = false },
              variableTypes = { enabled = false },
            },
          },
        },
        keys = {
          {
            "gD",
            function()
              require("vtsls").commands.goto_source_definition(0)
            end,
            desc = "Goto Source Definition",
          },
          {
            "gR",
            function()
              require("vtsls").commands.file_references(0)
            end,
            desc = "File References",
          },
          {
            "<leader>co",
            function()
              require("vtsls").commands.organize_imports(0)
            end,
            desc = "Organize Imports",
          },
          {
            "<leader>cM",
            function()
              require("vtsls").commands.add_missing_imports(0)
            end,
            desc = "Add missing imports",
          },
          {
            "<leader>cu",
            function()
              require("vtsls").commands.remove_unused_imports(0)
            end,
            desc = "Remove unused imports",
          },
          {
            "<leader>cD",
            function()
              require("vtsls").commands.fix_all(0)
            end,
            desc = "Fix all diagnostics",
          },
          {
            "<leader>cV",
            function()
              require("vtsls").commands.select_ts_version(0)
            end,
            desc = "Select TS workspace version",
          },
        },
      },
    },
    setup = {
      tsserver = function()
        -- disable tsserver
        return true
      end,
      vtsls = function(_, opts)
        -- copy typescript settings to javascript
        opts.settings.javascript =
          vim.tbl_deep_extend("force", {}, opts.settings.typescript, opts.settings.javascript or {})
      end,
    },
  },
}
