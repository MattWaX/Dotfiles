return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPost", "BufNewFile" },
        cmd = { "TSInstall", "TSBufEnable", "TSBufDisable", "TSModuleInfo" },
        build = ":TSUpdate",
        opts = {
            ensure_installed = {
                "c",
                "cpp",
                "java",
                "latex",
                "lua",
                "luadoc",
                "markdown",
                "markdown_inline",
                "printf",
                "rust",
                "typst",
                "vim",
                "vimdoc",
            },

            highlight = {
                enable = true,
                use_languagetree = true,
            },

            indent = { enable = true },
        },
        config = function(_, opts)
            require("nvim-treesitter.configs").setup(opts)
        end,
    },
}
