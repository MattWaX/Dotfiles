return {
    "RaafatTurki/hex.nvim",
    lazy = false,
    config = function()
        require("hex").setup()
    end,
    cmd = {
        "HexDump",
        "HexAssemble",
        "HexToggle",
    },
}
