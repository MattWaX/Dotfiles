require "options"

local opt = vim.o
local map = vim.keymap.set

opt.tabstop = 8
opt.softtabstop = 8
opt.shiftwidth = 8

opt.makeprg = "make"

map("n", "<F5>", ":Start -wait=always make -s run<CR>", { desc = "Build and run the cpp project"})
map("n", "<F6>", ":Make build<CR>", { desc = "Build the cpp project"})
map("n", "<F7>", ":Start -wait=always make -s debug<CR>", { desc = "Open the gdb debugger for the current c project"})
