-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- Auto remove unused imports on file save typescript and javascript only.
vim.api.nvim_create_autocmd("BufWritePre", {
  group = vim.api.nvim_create_augroup("TS_RemoveUnusedImports", { clear = true }),
  desc = "TS_RemoveUnusedImports",
  pattern = { "*.ts", "*.tsx", "*.js", "*.jsx" },
  callback = function()
    vim.cmd([[TSToolsRemoveUnusedImports]])
    vim.cmd("write")
  end,
})
