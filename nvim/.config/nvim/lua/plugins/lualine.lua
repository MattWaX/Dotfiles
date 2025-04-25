return {
    "nvim-lualine/lualine.nvim",
    lazy = false,
    config = function()
        local mode = {
            "mode",
            fmt = function(str)
                return " " .. str
            end,
        }

        local filename = {
            "filename",
            file_status = true, -- displays file status (readonly status, modified status)
            path = 1, -- 0 = just filename, 1 = relative path, 2 = absolute path
        }

        local lsp_status = {
            "lsp_status",
            icon = "", -- f013
            symbols = {
                -- Standard unicode symbols to cycle through for LSP progress:
                spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" },
                -- Standard unicode symbol for when LSP is done:
                done = "",
                -- Delimiter inserted between LSP names:
                separator = " ",
            },
            -- List of LSP names to ignore (e.g., `null-ls`):
            ignore_lsp = {},
        }

        local hide_in_width = function()
            return vim.fn.winwidth(0) > 100
        end

        local diagnostics = {
            "diagnostics",
            sources = { "nvim_diagnostic" },
            sections = { "error", "warn" },
            symbols = { error = " ", warn = " ", info = " ", hint = " " },
            colored = false,
            update_in_insert = false,
            always_visible = false,
            cond = hide_in_width,
        }

        local diff = {
            "diff",
            colored = false,
            symbols = { added = " ", modified = " ", removed = " " }, -- changes diff symbols
            cond = hide_in_width,
        }

        require("lualine").setup {
            options = {
                icons_enabled = true,
                -- theme = auto, -- Set theme based on environment variable
                section_separators = { left = "", right = "" },
                component_separators = { left = "", right = "" },
                disabled_filetypes = { "alpha" },
                always_divide_middle = true,
                globalstatus = true,
            },
            sections = {
                lualine_a = { mode },
                lualine_b = { filename },
                lualine_c = { lsp_status },
                lualine_x = {
                    diagnostics,
                    diff,
                    { "encoding", cond = hide_in_width },
                    { "filetype", cond = hide_in_width },
                },
                lualine_y = { "location" },
                lualine_z = { "progress" },
            },
            inactive_sections = {
                lualine_a = { mode },
                lualine_b = { filename },
                lualine_c = {},
                lualine_x = {},
                lualine_y = { "location" },
                lualine_z = { "progress" },
            },
            tabline = {},
            extensions = { "quickfix", "oil", "mason", "man", "nvim-dap-ui" },
        }
    end,
}
