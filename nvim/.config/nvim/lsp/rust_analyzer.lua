---@type vim.lsp.Config
return {
    cmd = { "rust-analyzer" },
    filetypes = { "rust" },
    root_markers = { "Cargo.toml", "rust-project.json" },
    capabilities = {
        experimental = {
            commands = {
                commands = {
                    "rust-analyzer.runSingle",
                    "rust-analyzer.showReferences",
                    "rust-analyzer.debugSingle",
                },
            },
        },
    },
    settings = {
        ["rust-analyzer"] = {
            inlayHints = {
                -- These are a bit too much.
                chainingHints = { enable = false },
                closingBraceHints = { enable = true, minLines = 25 },
                parameterHints = { enable = true },
                typeHints = { enable = true },
            },
            lens = {
                enable = true,
                run = {
                    enable = true,
                },
                implementations = {
                    enable = true,
                },
                references = {
                    adt = {
                        enable = true,
                    },
                    method = {
                        enable = true,
                    },
                    trait = {
                        enable = true,
                    },
                    enumVariant = {
                        enable = true,
                    },
                },
            },
        },
    },
}
