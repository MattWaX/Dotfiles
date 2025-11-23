return {
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        event = "User FilePost",
        opts = {
            signs = {
                add = { text = "+" },
                change = { text = "c" },
                delete = { text = "_" },
                topdelete = { text = "‾" },
                changedelete = { text = "~" },
                untracked = { text = "/" },
            },
        },
    },
}
