require("bufferline").setup {
    options = {
        themable = true,
        show_close_icon = false,
        show_buffer_close_icons = true,
        truncate_names = false,
        always_show_bufferline = false,
        indicator = { style = "underline" },
        diagnostics = "nvim_lsp",
    },
}
