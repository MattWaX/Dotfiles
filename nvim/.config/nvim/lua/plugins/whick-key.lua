return {
    {
        "folke/which-key.nvim",
        lazy = false,
        cmd = "WhichKey",
        opts = function()
            return {
                preset = "helix",
                triggers = {
                    { "m", mode = { "n", "v" } },
                    { "g", mode = { "n", "v" } },
                },
            }
        end,
    },
}
