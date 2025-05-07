return {
    "williamboman/mason.nvim",
    cmd = { "Mason", "MasonInstall", "MasonUpdate" },
    opts = {
        PATH = "skip",

        ensure_installed = {
            -- lua
            "lua-language-server",
            "stylua",
            -- shell
            "bash-language-server",
            "bash-debug-adapter",
            "shfmt",
            -- web
            "css-lsp",
            "html-lsp",
            -- c/cpp
            "clangd",
            "clang-format",
            -- rust
            "rust-analyzer",
            "taplo",
            -- c, cpp, rust debugger
            "codelldb",
            -- asm
            "asm-lsp",
            "asmfmt",
            -- java
            "jdtls",
            "java-debug-adapter",
            -- php
            "phpactor",
            "php-debug-adapter",
            -- tex
            "texlab",
            "bibtex-tidy",
            -- R
            "r-languageserver",
            "air",
            -- XML
            "lemminx",
            -- treesitter
            "tree-sitter-cli",
        },

        ui = {
            icons = {
                package_pending = " ",
                package_installed = " ",
                package_uninstalled = " ",
            },
        },

        max_concurrent_installers = 10,
    },
}
