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

vim.g.no_plugin_maps = true
require("nvim-treesitter-textobjects").setup {
    select = {
        lookahead = true,
    },
}
local text_objects = {
    { "af", "@function.outer", "method/function definition" },
    { "if", "@function.inner", "method/function definition" },
    { "aa", "@parameter.outer", "parameter/argument" },
    { "ia", "@parameter.inner", "parameter/argument" },
    { "ac", "@class.outer", "class" },
    { "ic", "@class.inner", "class" },
    { "al", "@loop.outer", "loop" },
    { "il", "@loop.inner", "loop" },
    { "ai", "@conditional.outer", "conditional" },
    { "ii", "@conditional.inner", "conditional" },
    { "/", "@comment.outer", "comment" },
}
for _, v in ipairs(text_objects) do
    vim.keymap.set({ "x", "o" }, v[1], function()
        require("nvim-treesitter-textobjects.select").select_textobject(v[2], "textobjects")
    end, { desc = v[3] })
end
vim.keymap.set("n", "gr>a", function()
  require("nvim-treesitter-textobjects.swap").swap_next "@parameter.inner"
end)
vim.keymap.set("n", "gr<a", function()
  require("nvim-treesitter-textobjects.swap").swap_previous "@parameter.inner"
end)
