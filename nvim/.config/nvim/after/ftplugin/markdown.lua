require "options"

local opt = vim.o
local map = vim.keymap.set

opt.spell = true

opt.textwidth = 79
opt.colorcolumn = "+1"

map("n", "<F5>", ":Make!<CR>", { desc = "Silent Make"})
map("n", "<F6>", ":Make<CR>", { desc = "Make"})

-- local nabla = require "nabla"
--
-- vim.api.nvim_create_autocmd({ "BufWrite" }, {
--     callback = function()
--         if nabla.is_virt_enabled() then
--             nabla.enable_virt()
--         end
--     end,
-- })
-- nabla.enable_virt()
-- vim.api.nvim_create_autocmd({ "InsertEnter" }, {
--     callback = function()
--         if nabla.is_virt_enabled() then
--             nabla.disable_virt()
--         end
--     end,
-- })
-- vim.api.nvim_create_autocmd({ "InsertLeave" }, {
--     callback = function()
--         if nabla.is_virt_enabled() then
--             nabla.enable_virt()
--         end
--     end,
-- })
