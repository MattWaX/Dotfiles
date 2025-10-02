require "options"

local opt = vim.o
local map = vim.keymap.set

map("n", "<F5>", ":Start -wait=always make -s run<CR>", { desc = "Build and run the rust project"})
map("n", "<F6>", ":Make build<CR>", { desc = "Build the rust project"})
map("n", "<F7>", ":Make check<CR>", { desc = "Check if the rust project is valid"})
map("n", "<F8>", ":Make test<CR>", { desc = "Run the tests in the rust project"})
