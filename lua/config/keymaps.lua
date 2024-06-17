-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("n", "<C-j>", ":m .+1<CR>==", { desc = "Move line up" })
map("n", "<C-k>", ":m .-2<CR>==", { desc = "Move line down" })
map("v", "<C-j>", ":m '>+1<CR>gv=gv", { desc = "Move line up" })
map("v", "<C-k>", ":m '<-2<CR>gv=gv", { desc = "Move line down" })

map("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

map("n", "<leader>č", "<cmd>OutputPanel<cr>", { desc = "LSP logs panel toggle" })

map("n", "<leader>š", "<cmd>LspRestart<cr>", { desc = "Restart LSP server" })

map("n", "<leader>xc", "<Plug>RestNvim", { desc = "Execute REST query" })
map("n", "<leader>cm", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Render markdown" })

local set_keymap = vim.api.nvim_set_keymap
--
-- package-info keymaps
set_keymap(
  "n",
  "<leader>cpt",
  "<cmd>lua require('package-info').toggle()<cr>",
  { silent = true, noremap = true, desc = "Toggle" }
)
set_keymap(
  "n",
  "<leader>cpd",
  "<cmd>lua require('package-info').delete()<cr>",
  { silent = true, noremap = true, desc = "Delete package" }
)
set_keymap(
  "n",
  "<leader>cpu",
  "<cmd>lua require('package-info').update()<cr>",
  { silent = true, noremap = true, desc = "Update package" }
)
set_keymap(
  "n",
  "<leader>cpi",
  "<cmd>lua require('package-info').install()<cr>",
  { silent = true, noremap = true, desc = "Install package" }
)
set_keymap(
  "n",
  "<leader>cpc",
  "<cmd>lua require('package-info').change_version()<cr>",
  { silent = true, noremap = true, desc = "Change package version" }
)
