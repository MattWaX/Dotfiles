vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "CursorLineSign", { link =  "Normal" })
        vim.api.nvim_set_hl(0, "SignColumn", { link =  "Normal" })
    end,
})

return {
    { "vinitkumar/oscura-vim", lazy = false },
    { "orthecreedence/void.vim", lazy = false },
    { "DeviusVim/deviuspro.nvim", lazy = false },
    { "Oniup/ignite.nvim", lazy = false },
    { "TaurusOlson/basalt.vim", lazy = false },
}
