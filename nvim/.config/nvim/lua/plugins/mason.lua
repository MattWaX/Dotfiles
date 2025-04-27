return {
    {
        "williamboman/mason.nvim",
        cmd = { "Mason", "MasonInstall", "MasonUpdate" },
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
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        opts = {

            -- a list of all tools you want to ensure are installed upon
            -- start
            ensure_installed = {
                -- lua
                "lua-language-server",
                "stylua",
                -- shell
                "bash-language-server",
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
                -- php
                "phpactor",
                -- tex
                "texlab",
                "bibtex-tidy",
            },

            auto_update = false,
            run_on_start = true,
            start_delay = 3000, -- 3 second delay
            debounce_hours = 5, -- at least 5 hours between attempts to install/update
            integrations = {
                ["mason-lspconfig"] = true,
                ["mason-null-ls"] = true,
                ["mason-nvim-dap"] = true,
            },
        },
    },
}
