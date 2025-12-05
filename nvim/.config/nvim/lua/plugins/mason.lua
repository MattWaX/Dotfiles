return {
    {
        "williamboman/mason.nvim",
        opts = {
            PATH = "skip",

            ui = {
                icons = {
                    package_pending = " ",
                    package_installed = " ",
                    package_uninstalled = " ",
                },
            },

            max_concurrent_installers = 10,
        },
    },
    -- {
    --     "WhoIsSethDaniel/mason-tool-installer.nvim",
    --     opts = {
    --         ensure_installed = {
    --             -- lua
    --             "lua-language-server",
    --             "stylua",
    --             -- shell
    --             "bash-language-server",
    --             "bash-debug-adapter",
    --             "shfmt",
    --             -- web
    --             "css-lsp",
    --             "html-lsp",
    --             -- c/cpp
    --             "clangd",
    --             "clang-format",
    --             -- rust
    --             "rust-analyzer",
    --             "taplo",
    --             -- c, cpp, rust debugger
    --             "codelldb",
    --             -- asm
    --             "asm-lsp",
    --             "asmfmt",
    --             -- java
    --             "jdtls",
    --             "java-debug-adapter",
    --             -- php
    --             "phpactor",
    --             "php-debug-adapter",
    --             -- tex
    --             "texlab",
    --             "bibtex-tidy",
    --             -- R
    --             -- "r-languageserver",
    --             "air",
    --             -- XML
    --             "lemminx",
    --             "xmlformatter",
    --             -- treesitter
    --             "tree-sitter-cli",
    --         },
    --
    --         integrations = {
    --             ["mason-lspconfig"] = true,
    --             ["mason-null-ls"] = true,
    --             ["mason-nvim-dap"] = true,
    --         },
    --     },
    -- },
}
