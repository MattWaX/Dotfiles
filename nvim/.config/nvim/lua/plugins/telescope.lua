return {
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-treesitter/nvim-treesitter" },
        lazy = false,
        cmd = "Telescope",
        config = function()
            require("telescope").setup {
                defaults = {
                    prompt_prefix = "   ",
                    selection_caret = "> ",
                    entry_prefix = "  ",
                    sorting_strategy = "ascending",
                    layout_config = {
                        horizontal = {
                            prompt_position = "top",
                            preview_width = 0.55,
                        },
                        width = 0.87,
                        height = 0.80,
                    },
                },

                extensions_list = { "themes", "terms" },
                extensions = {},
            }

            local map = vim.keymap.set

            -- telescope
            map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "telescope find files" })
            map("n", "<leader>fa", "<cmd>Telescope find_files no_ignore=true hidden=true<CR>", { desc = "telescope find all files" })
            map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "telescope live grep" })
            map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "telescope find buffers" })
            map("n", "<leader>fh", "<cmd>Telescope help_tags<CR>", { desc = "telescope help page" })
            map("n", "<leader>ma", "<cmd>Telescope marks<CR>", { desc = "telescope find marks" })
            map("n", "<leader>fo", "<cmd>Telescope oldfiles<CR>", { desc = "telescope find oldfiles" })
            map("n", "<leader>fz", "<cmd>Telescope current_buffer_fuzzy_find<CR>", { desc = "telescope find in current buffer" })
            map("n", "<leader>gc", "<cmd>Telescope git_commits<CR>", { desc = "telescope git commits" })
            map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "telescope git status" })
            map("n", "<leader>:", "<cmd>Telescope commands<cr>", { desc = "Comand Palette" })
        end,
    },
}
