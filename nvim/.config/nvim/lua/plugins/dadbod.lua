return {
    -- DB plugins
    {
        "tpope/vim-dadbod",
    },
    {
        "kristijanhusak/vim-dadbod-ui",
        dependencies = {
            { "tpope/vim-dadbod", lazy = true },
            { "kristijanhusak/vim-dadbod-completion", ft = { "sql", "mysql", "plsql" }, lazy = true }, -- Optional
        },
        cmd = {
            "DBUI",
            "DBUIToggle",
            "DBUIAddConnection",
            "DBUIFindBuffer",
        },
        init = function()
            -- Your DBUI configuration
            vim.g.db_ui_use_nerd_fonts = 1
            vim.g.db_ui_execute_on_save = 0
        end,
    },
--     {
--         "kristijanhusak/vim-dadbod-completion",
--         ft = { "sql", "mysql", "plsql" },
--         lazy = true,
--         dependencies = {
--             { "tpope/vim-dadbod" },
--             { "kristijanhusak/vim-dadbod-completion" },
--         },
--         cmd = {
--             "DBUI",
--             "DBUIToggle",
--             "DBUIAddConnection",
--             "DBUIFindBuffer",
--         },
--         init = function()
--             -- Your DBUI configuration
--             vim.g.db_ui_use_nerd_fonts = 1
--         end,
--     },
-- }
