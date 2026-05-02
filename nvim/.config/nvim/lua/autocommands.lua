local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Highlight yanked text
local highlight_group = augroup("YankHighlight", { clear = true })
autocmd("TextYankPost", {
    pattern = "*",
    callback = function()
        vim.highlight.on_yank { timeout = 170 }
    end,
    group = highlight_group,
})

-- Highlight fixes
autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "CursorLineSign", { link = "Normal" })
        vim.api.nvim_set_hl(0, "SignColumn", { link = "Normal" })
        vim.api.nvim_set_hl(0, "Visual", { reverse = true })
        vim.api.nvim_set_hl(0, "LspInlayHint", { link = "Comment" })
        vim.api.nvim_set_hl(0, "Pmenu", { link = "Title" })
        vim.api.nvim_set_hl(0, "PmenuSel", { link = "Visual" })
    end,
})

-- Filetype autocommands
autocmd("BufEnter", {
    pattern = "*",
    command = "set formatoptions=cjnqrt"
})
-- typst
autocmd("BufWritePost", {
    pattern = "*.typ",
    command = "Make! compile",
})
