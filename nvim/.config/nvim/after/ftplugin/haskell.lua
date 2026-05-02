require "options"

local opt = vim.o
local map = vim.keymap.set

opt.makeprg = "cabal"

map("n", "m<CR>", "<CMD>Start -wait=always cabal run<CR>", { desc = "Build and run the haskell project"})
