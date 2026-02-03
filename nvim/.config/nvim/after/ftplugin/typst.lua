require "options"

local opt = vim.o
local map = vim.keymap.set

opt.expandtab = true
opt.smartindent = true
opt.tabstop = 8
opt.softtabstop = 4
opt.shiftwidth = 4
opt.textwidth = 79
opt.colorcolumn = "+1"

opt.makeprg = "typst"

map("n", "m!", "<CMD>Make! watch %:p<CR>")
map("n", "m<CR>", "<CMD>Make! c %:p<CR>")
map("n", "gz", "<CMD>Make! c %:p<CR><CMD>silent !zathura --fork %:p:r.pdf &<CR>", { desc = "Open the current typst file in zathura"})
