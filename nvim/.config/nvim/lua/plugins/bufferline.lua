return {
    {
        "akinsho/bufferline.nvim",
        lazy = false,
        version = "*",
        dependencies = "nvim-tree/nvim-web-devicons",
        opts = {
            options = {
                show_close_icon = true,
                show_buffer_close_icons = true,
                truncate_names = false,
                always_show_bufferline = false,
                indicator = { style = 'underline' },
                diagnostics = 'nvim_lsp',
            },
        },
    },
}
