local option = vim.opt
local opt = vim.o
local g = vim.g

-- enable localconfig
opt.exrc = true

-- Autocompletion
opt.complete = "o,.,b,u,f"
-- opt.autocomplete = true
opt.completeopt = "menu,menuone,noinsert,noinsert,popup,fuzzy,preview"
opt.wildoptions = "pum,tagfile,fuzzy"
opt.pumborder = "single"
opt.pumheight = 10
opt.pummaxwidth = 60

-- Cosmetics
opt.termguicolors = true
opt.showmode = false
opt.cursorline = true
opt.cursorlineopt = "both"
opt.cursorcolumn = true
opt.winborder = "bold"
option.listchars = { space = "·", tab = "> ", eol = "$" }

-- Numbers
opt.number = true
opt.numberwidth = 4
opt.relativenumber = true
opt.ruler = false

-- Indenting
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.tabstop = 8
opt.softtabstop = 4
opt.shiftwidth = 4

option.fillchars = { eob = " " }
opt.ignorecase = true
opt.smartcase = true
opt.mouse = "a"
opt.jumpoptions = "stack,view"

opt.formatoptions = "cjnqrt"

-- Text wrap
opt.wrap = true
opt.linebreak = true

-- Fold
opt.foldenable = true
opt.foldlevel = 99
opt.foldmethod = "expr"
opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"

-- Grep
opt.grepprg = "rg --field-match-separator \" : \" --vimgrep "
opt.grepformat = "%f : %l : %c : %m"

-- Misc
opt.clipboard = "unnamedplus"

opt.spelllang = "it,en_us"

opt.conceallevel = 2

opt.signcolumn = "yes"
opt.splitbelow = true
opt.splitright = true
opt.timeoutlen = 400
opt.undofile = true
opt.swapfile = false

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

-- WinBar only if more than one split
-- (if these two events will bug out a bit i'll add again "TextChanged" event)
vim.api.nvim_create_autocmd({ "WinEnter", "WinLeave" }, {
    callback = function()
        local win_amount = #vim.api.nvim_tabpage_list_wins(0)
        if win_amount <= 1 then
            opt.winbar = ""
        else
            opt.winbar = "%f %m"
        end
    end,
})

g.expand_pairs_list = {
    { "()" },
    { "[]" },
    { "{}" },
    { "><" },
    { "<>" },
    { "$$" },
}

require('vim._core.ui2').enable()
