-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line up" })
map("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line down" })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

map("n", "<leader>cx", "<cmd>TSToolsRenameFile<cr>", { desc = "Rename file (with LSP)" })
map("n", "<leader>ci", "<cmd>TSToolsRemoveUnusedImports<cr>", { desc = "Remove unused imports" })

map("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

map("n", "<leader>č", "<cmd>OutputPanel<cr>", { desc = "LSP logs panel toggle" })

map("n", "<leader>š", "<cmd>LspRestart tsserver<cr>", { desc = "Restart TS LSP server" })

map("n", "<leader>xc", "<Plug>RestNvim", { desc = "Execute REST query" })
