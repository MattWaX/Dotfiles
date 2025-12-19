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
map("n", "gb", "<cmd>BufferLinePick<CR>", { desc = "buffer goto prev" })
map("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "buffer close" })

-- commenting
map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey<CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
  vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

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
