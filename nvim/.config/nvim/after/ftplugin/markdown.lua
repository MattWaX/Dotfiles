require "options"

local opt = vim.o
local map = vim.keymap.set

opt.spell = true

opt.textwidth = 79
opt.colorcolumn = "+1"

local setreg = vim.fn.setreg
setreg("b", "ciw****hhpb") -- bold macro
setreg("i", "ciw**hpb") -- italic macro

map("n", "<F5>", ":Make!<CR>", { desc = "Silent Make" })
map("n", "<F6>", ":Make<CR>", { desc = "Make" })
