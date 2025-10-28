---@type vim.lsp.Config
return {
    cmd = {
        'clangd',
        '--clang-tidy',
        '--header-insertion=never',
        '--completion-style=detailed',
        '--fallback-style=none',
        '--function-arg-placeholders=false',
        '--enable-config',
    },
    filetypes = { 'c', 'cpp' },
    root_markers = { '.clangd' },
}
