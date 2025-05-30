vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "PmenuSel", { link = "Visual" })
        vim.api.nvim_set_hl(0, "BlinkCmpLabelMatch", { link = "Title" })
        vim.api.nvim_set_hl(0, "BlinkCmpLabelDeprecated", { link = "SpellBad" })
    end,
})

return {
    {
        "saghen/blink.cmp",
        lazy = false,
        -- optional: provides snippets for the snippet source
        dependencies = { "rafamadriz/friendly-snippets" },

        -- use a release tag to download pre-built binaries
        version = "1.*",
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = 'cargo build --release',
        -- If you use nix, you can build from source using latest nightly rust with:
        -- build = 'nix run .#build-plugin',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            -- 'default' (recommended) for mappings similar to built-in completions (C-y to accept)
            -- 'super-tab' for mappings similar to vscode (tab to accept)
            -- 'enter' for enter to accept
            -- 'none' for no mappings
            --
            -- All presets have the following mappings:
            -- C-space: Open menu or open docs if already open
            -- C-n/C-p or Up/Down: Select next/previous item
            -- C-e: Hide menu
            -- C-k: Toggle signature help (if signature.enabled = true)
            --
            -- See :h blink-cmp-config-keymap for defining your own keymap
            keymap = {
                ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
                ["<C-e>"] = { "hide", "fallback" },
                ["<C-y>"] = { "accept", "fallback" },
                -- ["<CR>"] = { "accept", "fallback" },

                ["<Tab>"] = { "select_prev", "fallback_to_mappings" },
                ["<S-Tab>"] = { "select_next", "fallback_to_mappings" },
                ["<Up>"] = { "select_prev", "fallback" },
                ["<Down>"] = { "select_next", "fallback" },
                ["<C-p>"] = { "select_prev", "fallback_to_mappings" },
                ["<C-n>"] = { "select_next", "fallback_to_mappings" },

                ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                ["<C-f>"] = { "scroll_documentation_down", "fallback" },

                ["<C-k>"] = { "show_signature", "hide_signature", "fallback" },
            },

            appearance = {
                nerd_font_variant = "mono",
            },

            -- local hl = require("vim.api.nvim_set_hl")

            -- (Default) Only show the documentation popup when manually triggered
            completion = { documentation = { auto_show = true } },

            -- Default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, due to `opts_extend`
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                per_filetype = {
                    sql = { "snippets", "dadbod", "buffer" },
                    mysql = { "snippets", "dadbod", "buffer" },
                    -- markdown = { "obsidian", "obsidian_new", "obsidian_tags" }
                },
                -- add vim-dadbod-completion to your completion providers
                providers = {
                    dadbod = { name = "Dadbod", module = "vim_dadbod_completion.blink" },
                },
            },
            -- (Default) Rust fuzzy matcher for typo resistance and significantly better performance
            -- You may use a lua implementation instead by using `implementation = "lua"` or fallback to the lua implementation,
            -- when the Rust fuzzy matcher is not available, by using `implementation = "prefer_rust"`
            --
            -- See the fuzzy documentation for more information
            fuzzy = { implementation = "prefer_rust" },
        },
        opts_extend = { "sources.default" },
    },
}
