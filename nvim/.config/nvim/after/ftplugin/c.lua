require "options"

local opt = vim.o
local map = vim.keymap.set

opt.tabstop = 8
opt.softtabstop = 8
opt.shiftwidth = 8

opt.makeprg = "make"

map("n", "<F5>", ":Make run<CR>", { desc = "Build and run the c project"})
map("n", "<F6>", ":Make build<CR>", { desc = "Build the c project"})
