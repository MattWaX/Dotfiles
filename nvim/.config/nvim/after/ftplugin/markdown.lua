require "options"

local opt = vim.o
local map = vim.keymap.set

opt.spell = true

opt.textwidth = 79
opt.colorcolumn = "+1"

local setreg = vim.fn.setreg
setreg("b", "ciw****hhpb") -- bold macro
setreg("i", "ciw**hpb") -- italic macro
setreg("l", "ciW$$hpb") -- latex word macro

map("n", "<F5>", ":Make!<CR>", { desc = "Silent Make" })
map("n", "<F6>", ":Make<CR>", { desc = "Make" })

vim.api.nvim_create_autocmd("User", {
    pattern = "ObsidianNoteEnter",
    callback = function(ev)
        vim.keymap.set("n", "<leader>o", "<cmd>Obsidian<CR>", {
            buffer = ev.buf,
            desc = "Obsidian Subcommands",
        })
    end,
})
