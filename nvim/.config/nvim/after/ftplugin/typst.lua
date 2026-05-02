require "options"
require "snippets"

local opt = vim.o
local map = vim.keymap.set

opt.textwidth = 79
opt.colorcolumn = "+1"
opt.spell = true

opt.makeprg = "just"
opt.errorformat = "%E%trror: %m,"
    .. "%W%tarning: %m,"
    .. "%+Nhelp: %m,"
    .. "%C%.%#┌─ %f:%l:%c,"
    .. "%C%c%.%#,"
    .. "%C%.%#%p^,"
    .. "%C%.%#,"

map("n", "m!", "<CMD>Make watch<CR>")
map("n", "m<CR>", "<CMD>Make! compile<CR>")
map(
    "n",
    "gz",
    "<CMD>Make! c %:p<CR><CMD>silent !zathura --fork %:p:r.pdf &<CR>",
    { desc = "Open the current typst file in zathura" }
)

-- snippets
vim.snippet.add("sum", "sum_(${1:i=1})^${2:n}", { buffer = 0 })
vim.snippet.add("lim", "lim_(${1:x} --> ${2:oo})", { buffer = 0 })
