require "options"

local opt = vim.o

opt.spell = true

local nabla = require "nabla"

vim.api.nvim_create_autocmd({ "BufWrite" }, {
    callback = function()
        if nabla.is_virt_enabled() then
            nabla.enable_virt()
        end
    end,
})
nabla.enable_virt()
vim.api.nvim_create_autocmd({ "InsertEnter" }, {
    callback = function()
        nabla.disable_virt()
    end,
})
vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    callback = function()
        nabla.enable_virt()
    end,
})
