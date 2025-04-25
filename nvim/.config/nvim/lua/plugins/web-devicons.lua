return {
    {
        "nvim-tree/nvim-web-devicons",
        opts = function()
            return {
                override = {
                    default_icon = { icon = "󰈚", name = "Default" },
                    js = { icon = "󰌞", name = "js" },
                    ts = { icon = "󰛦", name = "ts" },
                    lock = { icon = "󰌾", name = "lock" },
                    ["robots.txt"] = { icon = "󰚩", name = "robots" },
                },
            }
        end,
    },
}
