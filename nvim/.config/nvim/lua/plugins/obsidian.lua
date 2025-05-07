return {
    {
        "epwalsh/obsidian.nvim",
        version = "*", -- recommended, use latest release instead of latest commit
        lazy = true,
        ft = "markdown",
        -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
        -- event = {
        --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
        --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
        --   -- refer to `:h file-pattern` for more examples
        --   "BufReadPre path/to/my-vault/*.md",
        --   "BufNewFile path/to/my-vault/*.md",
        -- },
        dependencies = {
            -- Required.
            "nvim-lua/plenary.nvim",
        },
        opts = {
            workspaces = {
                {
                    name = "Appunti",
                    path = "~/Documents/Appunti/",
                },
                -- {
                --     name = "Personal",
                --     path = "~/Documents/Personal-Vault/",
                -- },
                {
                    name = "no-vault",
                    path = function()
                        -- alternatively use the CWD:
                        -- return assert(vim.fn.getcwd())
                        return assert(vim.fs.dirname(vim.api.nvim_buf_get_name(0)))
                    end,
                    overrides = {
                        notes_subdir = vim.NIL, -- have to use 'vim.NIL' instead of 'nil'
                        new_notes_location = "current_dir",
                        templates = {
                            folder = vim.NIL,
                        },
                        disable_frontmatter = true,
                    },
                },
            },
            mappings = {
                -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
                ["gf"] = {
                    action = function()
                        return require("obsidian").util.gf_passthrough()
                    end,
                    opts = { noremap = false, expr = true, buffer = true },
                },
                -- Toggle check-boxes.
                ["g<CR>"] = {
                    action = function()
                        return require("obsidian").util.toggle_checkbox()
                    end,
                    opts = { buffer = true },
                },
                -- Smart action depending on context, either follow link or toggle checkbox.
                -- ["<CR>"] = {
                --     action = function()
                --         return require("obsidian").util.smart_action()
                --     end,
                --     opts = { buffer = true, expr = true },
                -- },
            },
        },
    },
    {
        "jbyuki/nabla.nvim",
        dependencies = {
            "williamboman/mason.nvim",
        },
        lazy = false,

        config = function()
        end,

        keys = function()
            return {
                {
                    "<leader>np",
                    ':lua require("nabla").popup()<cr>',
                    desc = "NablaPopUp",
                },
                {
                    "<leader>nt",
                    ':lua require("nabla").toggle_virt()<cr>',
                    desc = "NablaToggle",
                },
                {
                    "<leader>nr",
                    ':lua require("nabla").enable_virt()<cr>',
                    desc = "NablaRefresh",
                },
            }
        end,
    },
}
