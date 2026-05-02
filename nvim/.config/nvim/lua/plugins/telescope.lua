require("telescope").setup {
    defaults = {
        prompt_prefix = "   ",
        selection_caret = "> ",
        entry_prefix = "  ",
        preview = { treesitter = true },
        color_devicons = true,
        sorting_strategy = "ascending",
        path_displays = { "smart" },
        layout_config = {
            height = 100,
            width = 400,
            prompt_position = "top",
            preview_cutoff = 40,
        },
        borderchars = {
            "", -- top
            "", -- right
            "", -- bottom
            "", -- left
            "", -- top-left
            "", -- top-right
            "", -- bottom-right
            "", -- bottom-left
        },
    },

    extensions_list = { "themes", "terms" },
    extensions = {},
}

local map = vim.keymap.set

-- telescope
map("n", "<leader>:", "<cmd>Telescope commands<cr>", { desc = "Comand Palette" })
map(
    "n",
    "<leader>fa",
    "<cmd>Telescope find_files no_ignore=true hidden=true<CR>",
    { desc = "telescope find all files" }
)
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
map("n", "gb", "<cmd>Telescope buffers<CR>", { desc = "fuzzy picker buffers" })
