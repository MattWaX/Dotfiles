return {
    {
        "lewis6991/gitsigns.nvim",
        lazy = false,
        event = "User FilePost",
        opts = {
            signs = {
                delete = { text = " " },
                changedelete = { text = " " },
            },
        },
    },
}
