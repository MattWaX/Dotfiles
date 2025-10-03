local map = vim.keymap.set
-- local nomap = vim.keymap.del

-- emacs style binds in insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })


map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "general copy whole file" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

map("n", "<leader>n", "<cmd>set nu!<CR>", { desc = "toggle line number" })
map("n", "<leader>rn", "<cmd>set rnu!<CR>", { desc = "toggle relative number" })

-- formatting on request
map("n", "<leader>fm", function()
  require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- buffer actions
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "buffer new" })
-- map("n", "<tab>", "<cmd>bnext<CR>", { desc = "buffer goto next" })
-- map("n", "<S-tab>", "<cmd>bprev<CR>", { desc = "buffer goto prev" })
map("n", "gb", "<cmd>BufferLinePick<CR>", { desc = "buffer goto prev" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "buffer close" })

-- commenting
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

-- telescope
-- map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
-- map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
-- map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
-- map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
-- map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
-- map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
-- map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
-- map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
-- map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "telescope pick hidden term" })
-- map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
-- map(
--   "n",
--   "<leader>fa",
--   "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
--   { desc = "telescope find all files" }
-- )
-- map("n", "<leader>;", "<cmd>Telescope commands<cr>", { desc = "Comand Palette" })
-- map("n", "<leader>:", "<cmd>Telescope commands<cr>", { desc = "Comand Palette" })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey<CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

-- misc
-- map("n", ";", ":", { desc = "CMD enter command mode" })
-- map({"n", "v"}, "q;", "q:", { desc = "CMD history" })

map("n", "-", "<cmd>Oil<cr>", { desc = "Open file explorer" })

map("i", "<C-BS>", "")
map("i", "<C-h>", "")

map("n", "<leader>cw", "<cmd>cd %:h<cr>", { desc = "Set cwd to current buffer" })
-- map("n", "<A-h>", "<C-w>h")
-- map("n", "<A-j>", "<C-w>j")
-- map("n", "<A-k>", "<C-w>k")
-- map("n", "<A-l>", "<C-w>l")

-- DBUI
map("n", "<Leader>db", "<cmd>DBUIToggle<CR>", { desc = "Toggle DBUI" })
