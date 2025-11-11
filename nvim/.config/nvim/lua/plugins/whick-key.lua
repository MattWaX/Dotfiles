return {
    {
        "folke/which-key.nvim",
        lazy = false;
        cmd = "WhichKey",
        opts = function()
            return {
                preset = "helix",
            }
        end,
    },
}
