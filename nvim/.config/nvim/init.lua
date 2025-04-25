vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
    local repo = "https://github.com/folke/lazy.nvim.git"
    vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "lazy"

-- load plugins
require("lazy").setup({
    { import = "plugins" },
}, lazy_config)

-- import configuration modules
require "options"
require "mappings"
require "lsp"

vim.cmd 'colorscheme basalt'
