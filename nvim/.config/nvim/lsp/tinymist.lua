---@type vim.lsp.Config
return {
    cmd = { "tinymist" },
    filetypes = { "typst", "typ" },
    settings = {
        formatterMode = "typstyle", -- or "typstfmt"
        formatterProseWrap = true, -- wrap lines in content mode
        formatterPrintWidth = 80, -- limit line length to 80 if possible
        formatterIndentSize = 4, -- indentation width
        syntaxOnly = "enabled",
        lint = {
            enabled = true,
            when = "onType",
        },
    },
    root_markers = { ".git" },
}
