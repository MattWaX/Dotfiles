vim.g.tmux_navigator_no_mappings = 1

local map = vim.keymap.set
map({"n", "v"},  "<A-h>", "<cmd>TmuxNavigateLeft<cr>")
map({"n", "v"},  "<A-j>", "<cmd>TmuxNavigateDown<cr>")
map({"n", "v"},  "<A-k>", "<cmd>TmuxNavigateUp<cr>")
map({"n", "v"},  "<A-l>", "<cmd>TmuxNavigateRight<cr>")
map({"n", "v"},  "<A-\\>", "<cmd>TmuxNavigatePrevious<cr>")
