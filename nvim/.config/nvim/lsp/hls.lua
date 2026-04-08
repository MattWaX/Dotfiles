---@type vim.lsp.Config
return {
    cmd = {
        "haskell-language-server-wrapper",
        "--lsp",
    },
    filetypes = { "haskell", "lhaskell" },
    settings = {
        haskell = {
            formattingProvider = "ormolu",
        },
    },
}
