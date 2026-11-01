local autocmd = vim.api.nvim_create_autocmd
-- Your DBUI configuration
vim.g.db_ui_use_nerd_fonts = 1
vim.g.db_ui_execute_on_save = 0

autocmd("FileType", {
    pattern = "mysql",
    callback = function()
        vim.cmd [[ setlocal omnifunc=vim_dadbod_completion#omni ]]
        vim.keymap.set("i", "<C-space>", "<C-x><C-o>", {buf=0})
    end,
})
