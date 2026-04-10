require("nvim-treesitter").setup {
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
}
