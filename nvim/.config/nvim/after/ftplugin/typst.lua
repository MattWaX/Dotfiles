require "options"

local opt = vim.o
local map = vim.keymap.set

opt.textwidth = 79
opt.colorcolumn = "+1"

opt.makeprg = "just"

map("n", "m!", "<CMD>Make watch<CR>")
map("n", "m<CR>", "<CMD>Make! compile<CR>")
map("n", "gz", "<CMD>Make! c %:p<CR><CMD>silent !zathura --fork %:p:r.pdf &<CR>", { desc = "Open the current typst file in zathura"})
