return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                asm = { "asmfmt" },
                c = { "clang-format" },
                lua = { "stylua" },
                sh = { "shfmt" },
                tex = { "bibtex-tidy" },
                r = { "air" },
                css = { "prettier" },
                html = { "prettier" },
                xml = { "xmlformatter" },
                php = { "pretty-php" },
                json = { "clang-format" },
                typst = { "typstyle" }
                -- jsonc = { "prettier" }
            },
        },
    },
}
