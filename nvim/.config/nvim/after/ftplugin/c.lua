require "options"

local opt = vim.o
local map = vim.keymap.set

opt.tabstop = 8
opt.softtabstop = 8
opt.shiftwidth = 8

opt.makeprg = "make"

map("n", "<F5>", ":Start -wait=always make -s run<CR>", { desc = "Build and run the c project"})
map("n", "<F6>", ":Start -wait=always make -s run args=\"\"<Left>", { desc = "Build and run the c project with args"})
map("n", "<F7>", ":Make build<CR>", { desc = "Build the c project"})
map("n", "<F8>", ":Start -wait=always make -s debug<CR>", { desc = "Open the gdb debugger for the current c project"})
