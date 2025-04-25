local option = vim.opt
local opt = vim.o
local g = vim.g

-- Cosmetics
opt.termguicolors = true
opt.showmode = false
opt.cursorline = true
opt.cursorlineopt = "both"
opt.cursorcolumn = true

-- Numbers
opt.number = true
opt.numberwidth = 2
opt.relativenumber = true
opt.ruler = false

-- Indenting
opt.expandtab = true
opt.smartindent = true
opt.tabstop = 8
opt.softtabstop = 4
opt.shiftwidth = 4

option.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"

-- Text wrap
opt.wrap = true
opt.linebreak = true

-- Misc
opt.clipboard = "unnamedplus"

opt.spelllang = "it,en_us"

opt.conceallevel = 2

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 400
opt.undofile = true

-- interval for writing swap file to disk, also used by gitsigns
opt.updatetime = 250

-- -- disable nvim intro
-- option.shortmess:append "sI"

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
option.whichwrap:append "<>[]hl"

-- disable some default providers
g.loaded_node_provider = 0
g.loaded_python3_provider = 0
g.loaded_perl_provider = 0
g.loaded_ruby_provider = 0

vim.env.PATH = table.concat({ vim.fn.stdpath "data", "mason", "bin" }, "/") .. ":" .. vim.env.PATH
