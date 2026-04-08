vim.lsp.commands["rust-analyzer.runSingle"] = function(command)
    local r = command.arguments[1]
    local cmd = { "cargo", unpack(r.args.cargoArgs) }
    if r.args.executableArgs and #r.args.executableArgs > 0 then
        vim.list_extend(cmd, { "--", unpack(r.args.executableArgs) })
    end

    local proc = vim.system(cmd, { cwd = r.args.cwd })

    local result = proc:wait()

    if result.code == 0 then
        vim.notify(result.stdout, vim.log.levels.INFO)
    else
        vim.notify(result.stderr, vim.log.levels.ERROR)
    end
end

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
