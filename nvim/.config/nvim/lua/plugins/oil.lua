return {
    {
        "stevearc/oil.nvim",
        ---@module 'oil'
        ---@type oil.SetupOpts
        dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
        opts = {
            lsp_file_methods = {
                enabled = true,
                timeout_ms = 1000,
                autosave_changes = true,
            },
            skip_confirm_for_simple_edits = true,
            columns = {
                "permissions",
                "size",
                "icon",
            },
        },
        lazy = false,
    },
}
