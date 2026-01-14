require "options"

local opt = vim.o
local map = vim.keymap.set

opt.makeprg = "typst"

map("n", "m!", "<CMD>Make! watch %:p<CR>")
map("n", "m<CR>", "<CMD>Make! c %:p<CR>")
map("n", "gz", "<CMD>Make! c %:p<CR><CMD>silent !zathura --fork %:p:r.pdf &<CR>", { desc = "Open the current typst file in zathura"})
