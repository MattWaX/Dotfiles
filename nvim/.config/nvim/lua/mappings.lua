local map = vim.keymap.set
-- local nomap = vim.keymap.del

vim.g.mapleader = " "

-- emacs style binds in insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- formatting on request
map("n", "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- buffer actions
map("n", "gb", "<cmd>BufferLinePick<CR>", { desc = "buffer goto prev" })
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>", { desc = "close all buffers exept current one" })

-- commenting
-- map("n", "<leader>/", "gcc", { desc = "toggle comment", remap = true })
-- map("v", "<leader>/", "gc", { desc = "toggle comment", remap = true })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey<CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
    vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

map("n", "-", "<cmd>Oil<cr>", { desc = "Open file explorer" })

map("i", "<C-BS>", "")
map("i", "<C-h>", "")
map({ "i", "s" }, "<C-n>", function()
    if vim.snippet.active { direction = 1 } then
        return "<Cmd>lua vim.snippet.jump(1)<CR>"
    else
        return "<C-n>"
    end
end, { expr = true, silent = true })
map({ "i", "s" }, "<C-p>", function()
    if vim.snippet.active { direction = -1 } then
        return "<Cmd>lua vim.snippet.jump(-1)<CR>"
    else
        return "<C-p>"
    end
end, { expr = true, silent = true })

map("n", "<leader>cw", "<cmd>cd %:h<cr>", { desc = "Set cwd to current buffer" })
-- map("n", "<A-h>", "<C-w>h")
-- map("n", "<A-j>", "<C-w>j")
-- map("n", "<A-k>", "<C-w>k")
-- map("n", "<A-l>", "<C-w>l")

-- lsp
map("n", "grd", "<cmd>lua vim.lsp.buf.definition()<cr>")
map("n", "grs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
map("n", "grq", "<cmd>lua vim.diagnostic.setqflist()<cr>")
map("n", "gre", "<cmd>lua vim.diagnostic.open_float()<cr>")
map("n", "grh", "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>")

map("i", "<c-space>", function()
    vim.lsp.completion.get()
end)

-- DBUI
map("n", "<Leader>db", "<cmd>DBUIToggle<CR>", { desc = "Toggle DBUI" })
