-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<A-ŋ>", ":m .+1<CR>==") -- move line up(n)
map("n", "<A- ̑>", ":m .-2<CR>==") -- move line down(n)
map("v", "<A-ŋ>", ":m '>+1<CR>gv=gv") -- move line up(v)
map("v", "<A- ̑>", ":m '<-2<CR>gv=gv") -- move line down(v)

map("n", "<leader>cx", "<cmd>TSToolsRenameFile<cr>") -- TS rename file with updated imports
map("n", "<leader>ci", "<cmd>TSToolsAddMissingImports<cr>") -- TS add missing imports

map("n", "<leader>t", "<cmd>ToggleTerm<cr>") -- Toggle terminal

map("n", "<leader>š", "<cmd>LspRestart tsserver<cr>") -- Restart TS LSP server
