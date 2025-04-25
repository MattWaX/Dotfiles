return {
    {
        "stevearc/conform.nvim",
        opts = {
            formatters_by_ft = {
                asm = { "asmfmt" },
                c = { "clang-format" },
                lua = { "stylua" },
                sh = { "shfmt" },
                tex = { "bibtex-tidy" }
                -- css = { "prettier" },
                -- html = { "prettier" },
            },
        },
    },
}
