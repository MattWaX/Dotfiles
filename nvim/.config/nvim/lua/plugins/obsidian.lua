return {
    {
        "obsidian-nvim/obsidian.nvim",
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
            "saghen/blink.cmp",
        },
        opts = {
            legacy_commands = false,
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
            picker = {
                -- Set your preferred picker. Can be one of 'telescope.nvim', 'fzf-lua', 'mini.pick' or 'snacks.pick'.
                name = "snacks.pick",
                -- Optional, configure key mappings for the picker. These are the defaults.
                -- Not all pickers support all mappings.
                note_mappings = {
                    -- Create a new note from your query.
                    new = "<C-x>",
                    -- Insert a link to the selected note.
                    insert_link = "<C-l>",
                },
                tag_mappings = {
                    -- Add tag(s) to current note.
                    tag_note = "<C-x>",
                    -- Insert a tag at the current location.
                    insert_tag = "<C-l>",
                },
            },
            completion = { blink = true, nvim_cmp = false },

            preferred_link_style = "markdown",

            ui = {
                enable = false, -- set to false to disable all additional syntax features
                update_debounce = 200, -- update delay after a text change (in milliseconds)
                max_file_length = 5000, -- disable UI features for files with more than this many lines
                -- checkboxes = {
                --     [" "] = { char = "󰄱", hl_group = "ObsidianTodo" },
                --     ["x"] = { char = "", hl_group = "ObsidianDone" },
                --     [">"] = { char = "", hl_group = "ObsidianRightArrow" },
                --     ["+"] = { char = "", hl_group = "ObsidianRightArrow" },
                --     ["-"] = { char = "", hl_group = "ObsidianTilde" },
                --     ["~"] = { char = "", hl_group = "ObsidianTilde" },
                --     ["!"] = { char = "", hl_group = "ObsidianImportant" },
                -- },
            },
            -- Define how various check-boxes are displayed
            checkbox = {
                enabled = false,
                create_new = false,
                order = { " ", "x", ">", "+", "-", "~", "!" },
            },

            disable_frontmatter = true,

            note_frontmatter_func = function(note)
                -- Add the title of the note as an alias.
                if note.title then
                    note:add_alias(note.title)
                end

                local out = { id = note.id, tags = note.tags }

                -- `note.metadata` contains any manually added fields in the frontmatter.
                -- So here we just make sure those fields are kept in the frontmatter.
                if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
                    for k, v in pairs(note.metadata) do
                        out[k] = v
                    end
                end

                return out
            end,
        },
    },
    -- {
    --     "MeanderingProgrammer/render-markdown.nvim",
    --     dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    --     config = function()
    --         require("render-markdown").setup {
    --             latex = {
    --                 enabled = true,
    --                 render_modes = false,
    --                 converter = { "utftex", "latex2text" },
    --                 highlight = "RenderMarkdownMath",
    --                 position = "center",
    --                 top_pad = 0,
    --                 bottom_pad = 0,
    --             },
    --         }
    --     end,
    -- },
    -- {
    --     "OXY2DEV/markview.nvim",
    --     lazy = false,
    --     dependencies = {
    --         "saghen/blink.cmp",
    --     },
    --     config = function()
    --         local presets = require "markview.presets"
    --         require("markview").setup {
    --             markdown = {
    --                 headings = presets.headings.glow,
    --                 horizontal_rules = presets.horizontal_rules.thick,
    --                 tables = presets.tables.single,
    --             },
    --         }
    --     end,
    -- },
    -- {
    --     "jbyuki/nabla.nvim",
    --     dependencies = {
    --         "williamboman/mason.nvim",
    --     },
    --     lazy = false,
    --
    --     config = function() end,
    --
    --     keys = function()
    --         return {
    --             {
    --                 "<leader>np",
    --                 ':lua require("nabla").popup()<cr>',
    --                 desc = "NablaPopUp",
    --             },
    --             {
    --                 "<leader>nt",
    --                 ':lua require("nabla").toggle_virt()<cr>',
    --                 desc = "NablaToggle",
    --             },
    --             {
    --                 "<leader>nr",
    --                 ':lua require("nabla").enable_virt()<cr>',
    --                 desc = "NablaRefresh",
    --             },
    --         }
    --     end,
    -- },
}
