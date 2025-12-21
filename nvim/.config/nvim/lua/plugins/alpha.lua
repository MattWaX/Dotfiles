return {
    "goolord/alpha-nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
        local dashboard = require "alpha.themes.dashboard"
        local header = {
            " ███▄    █ ▓█████  ▒█████   ██▒   █▓ ██▓ ███▄ ▄███▓",
            " ██ ▀█   █ ▓█   ▀ ▒██▒  ██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒",
            "▓██  ▀█ ██▒▒███   ▒██░  ██▒ ▓██  █▒░▒██▒▓██    ▓██░",
            "▓██▒  ▐▌██▒▒▓█  ▄ ▒██   ██░  ▒██ █░░░██░▒██    ▒██ ",
            "▒██░   ▓██░░▒████▒░ ████▓▒░   ▒▀█░  ░██░▒██▒   ░██▒",
            "░ ▒░   ▒ ▒ ░░ ▒░ ░░ ▒░▒░▒░    ░ ▐░  ░▓  ░ ▒░   ░  ░",
            "░ ░░   ░ ▒░ ░ ░  ░  ░ ▒ ▒░    ░ ░░   ▒ ░░  ░      ░",
            "   ░   ░ ░    ░   ░ ░ ░ ▒       ░░   ▒ ░░      ░   ",
            "         ░    ░  ░    ░ ░        ░   ░         ░   ",
            "                                ░                  ",
            "                                                   ",
        }

        -- dashboard.file_icons.provider = "devicons"
        dashboard.section.header.val = header
        dashboard.section.buttons.val = {
            dashboard.button( "-", "  Open file explorer", "<CMD>Oil<CR>"),
            dashboard.button( "p", "  Open fuzzy picker", "<leader>ff"),
            dashboard.button( "q", " 󰩈 Quit NVIM", "<CMD>qa<CR>"),
        }
        require("alpha").setup(dashboard.config)

        vim.api.nvim_create_autocmd("User", {
            once = true,
            pattern = "LazyVimStarted",
            callback = function()
                local lazy_info = require("lazy").stats()
                local startup_time = lazy_info.startuptime
                local ms = (math.floor(startup_time * 100 + 0.5) / 100)
                local loaded_plugins = lazy_info.loaded
                local total_plugins = lazy_info.count
                table.insert(
                    header,
                    "Loaded "
                        .. loaded_plugins
                        .. "/"
                        .. total_plugins
                        .. " plugins in "
                        .. ms
                        .. "ms, version "
                        .. tostring(vim.version())
                )

                dashboard.section.header.val = header
                pcall(vim.cmd.AlphaRedraw)
            end,
        })
    end,
}
