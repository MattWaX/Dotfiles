local fzflua = require "fzf-lua"
fzflua.setup {
    fzf_bin = "sk",
    winopts = {
        border = "none",
        backdrop = 0,
        fullscreen = true, -- start fullscreen?
    },
}
local map = vim.keymap.set

-- picker
map("n", "<leader>:", "<cmd>FzfLua commands<cr>", { desc = "Comand Palette" })
map("n", "<leader>fa", "<cmd>FzfLua files no_ignore=true hidden=true<CR>", { desc = "picker find all files" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "picker find buffers" })
map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "picker find files" })
map("n", "<leader>fh", "<cmd>FzfLua help_tags<CR>", { desc = "picker help page" })
map("n", "<leader>fo", "<cmd>FzfLua oldfiles<CR>", { desc = "picker find oldfiles" })
map("n", "<leader>fw", "<cmd>FzfLua live_grep<CR>", { desc = "picker live grep" })
map("n", "<leader>fz", "<cmd>FzfLua current_buffer_fuzzy_find<CR>", { desc = "picker find in current buffer" })
map("n", "<leader>gc", "<cmd>FzfLua git_commits<CR>", { desc = "picker git commits" })
map("n", "<leader>gt", "<cmd>FzfLua git_status<CR>", { desc = "picker git status" })
map("n", "<leader>'", "<cmd>FzfLua marks<CR>", { desc = "picker find marks" })
map("n", '<leader>"', "<cmd>FzfLua registers<CR>", { desc = "picker find marks" })
map("n", "gb", "<cmd>FzfLua buffers<CR>", { desc = "fuzzy picker buffers" })
