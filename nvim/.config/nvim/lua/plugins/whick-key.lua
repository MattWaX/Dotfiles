require("which-key").setup {
    preset = "helix",
    triggers = {
        { "m", mode = { "n", "v" } },
        { "g", mode = { "n", "v" } },
        { "<leader>", mode = { "n", "v" } },
    },
}
