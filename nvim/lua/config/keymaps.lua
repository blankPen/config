-- keymaps are automatically loaded on the verylazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- This file is automatically loaded by lazyvim.config.init
-- local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = vim.keymap.set
local unmap = vim.keymap.del

-- 去掉 <leader>w 的映射
unmap("n", "<leader>ww", { desc = "Other window" })
unmap("n", "<leader>wd", { desc = "Delete window" })
unmap("n", "<leader>w-", { desc = "Split window below" })
unmap("n", "<leader>w|", { desc = "Split window right" })

map({ "n", "x" }, "<C-j>", "5j", { noremap = true, silent = true })
map({ "n", "x" }, "<C-k>", "5k", { noremap = true, silent = true })
