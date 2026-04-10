require("oil").setup {
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
}
