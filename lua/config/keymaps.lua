-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>j", "<C-d>", { desc = "Jump down the page" })
vim.keymap.set("n", "<leader>k", "<C-u>", { desc = "Jump up the page" })
