---@type vim.lsp.Config
return {
    cmd = {
        'clangd',
        "--background-index",
        '--clang-tidy',
        '--header-insertion=never',
        '--completion-style=detailed',
        '--fallback-style=llvm',
        '--function-arg-placeholders=false',
        "--log=error",
        '--enable-config',
    },
    filetypes = { 'c', 'cpp' },
    root_markers = { '.clangd', 'compile_commands.json', '.git' },
}
