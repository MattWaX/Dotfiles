return {
    {
        "folke/which-key.nvim",
        lazy = false;
        keys = { "<leader>", "<c-w>", '"', "'", "`", "c", "v", "g" },
        cmd = "WhichKey",
        opts = function()
            return {}
        end,
    },
}
