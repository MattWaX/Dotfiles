local map = vim.keymap.set
-- local nomap = vim.keymap.del

vim.g.mapleader = " "

-- emacs style binds in insert mode
map("i", "<C-b>", "<ESC>^i", { desc = "move beginning of line" })
map("i", "<C-e>", "<End>", { desc = "move end of line" })

map("n", "<Esc>", "<cmd>noh<CR>", { desc = "general clear highlights" })

-- delete matching
map("n", "dm", "%%%x``x", { desc = "matching pair" })
-- vim.keymap.set({ "o", "x" }, "i,", "<CMD><C-u>norm f,F,lvt,<CR>", { silent = true })

-- formatting on request
map("n", "<leader>fm", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "general format file" })

-- buffer actions
map("n", "<leader>bo", "<cmd>%bd|e#|bd#<CR>", { desc = "close all buffers exept current one" })

-- move lines
map("n", "<C-n>", function()
    return "<CMD>move +"
        .. ((vim.v.count == 0) and 1 or 0) * 1 + ((vim.v.count ~= 0) and 1 or 0) * vim.v.count
        .. "<CR>"
end, { desc = "move current line down", silent = true, remap = true, expr = true })
map("n", "<C-p>", function()
    return "<CMD>move -"
        .. ((vim.v.count == 0) and 1 or 0) * 2 + ((vim.v.count ~= 0) and 1 or 0) * (vim.v.count + 1)
        .. "<CR>"
end, { desc = "move current line down", silent = true, remap = true, expr = true })
map("v", "<C-n>", function()
    return ":move'> +"
        .. ((vim.v.count == 0) and 1 or 0) * 1 + ((vim.v.count ~= 0) and 1 or 0) * vim.v.count
        .. "<CR>gv"
end, { desc = "move current line down", silent = true, remap = true, expr = true })
map("v", "<C-p>", function()
    return ":move -"
        .. ((vim.v.count == 0) and 1 or 0) * 2 + ((vim.v.count ~= 0) and 1 or 0) * (vim.v.count + 1)
        .. "<CR>gv"
end, { desc = "move current line down", silent = true, remap = true, expr = true })

map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })

-- whichkey
map("n", "<leader>wK", "<cmd>WhichKey<CR>", { desc = "whichkey all keymaps" })

map("n", "<leader>wk", function()
    vim.cmd("WhichKey " .. vim.fn.input "WhichKey: ")
end, { desc = "whichkey query lookup" })

map("n", "-", "<cmd>Oil<cr>", { desc = "Open file explorer" })

map("i", "<C-BS>", "")
map("i", "<C-h>", "")
map({ "i", "s" }, "<C-n>", function()
    if vim.snippet.active { direction = 1 } then
        return "<Cmd>lua vim.snippet.jump(1)<CR>"
    else
        return "<C-n>"
    end
end, { expr = true, silent = true })
map({ "i", "s" }, "<C-p>", function()
    if vim.snippet.active { direction = -1 } then
        return "<Cmd>lua vim.snippet.jump(-1)<CR>"
    else
        return "<C-p>"
    end
end, { expr = true, silent = true })

map("n", "<leader>cw", "<cmd>cd %:h<cr>", { desc = "Set cwd to current buffer" })
-- map("n", "<A-h>", "<C-w>h")
-- map("n", "<A-j>", "<C-w>j")
-- map("n", "<A-k>", "<C-w>k")
-- map("n", "<A-l>", "<C-w>l")

-- lsp
map("n", "grd", "<cmd>lua vim.lsp.buf.definition()<cr>")
map("n", "grs", "<cmd>lua vim.lsp.buf.signature_help()<cr>")
map("n", "grq", "<cmd>lua vim.diagnostic.setqflist()<cr>")
map("n", "gre", "<cmd>lua vim.diagnostic.open_float()<cr>")
map("n", "grh", "<cmd>lua vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled())<cr>")

map("i", "<c-space>", function()
    vim.lsp.completion.get()
end)

map("i", "<CR>", function()
    local char = {
        vim.fn.strcharpart(vim.fn.getline ".", vim.fn.getpos(".")[3] - 2, 1),
        vim.fn.strcharpart(vim.fn.getline ".", vim.fn.getpos(".")[3] - 1, 1),
    }
    local special_indent = false
    for _, pair in ipairs(vim.g.expand_pairs_list) do
        if char[1] == string.sub(pair[1], 1, 1) and char[2] == string.sub(pair[1], 2, 2) then
            special_indent = true
            break
        end
    end

    if special_indent then
        return "<CR><esc>==O"
    else
        return "<CR>"
    end
end, { expr = true })

-- custom commands
function Scratch()
    vim.cmd [[
        enew
        setlocal buftype=nofile
        setlocal bufhidden=wipe
        setlocal nobuflisted
        setlocal noswapfile
        setlocal winbar=[Scratch]
        file [Scratch]
    ]]
end
vim.api.nvim_create_user_command("Scratch", "lua Scratch()", { desc = "Create a temporary scratch buffer" })
map("n", "gs", "<cmd>Scratch<CR>", { desc = "Create a temporary scratch buffer" })

-- DBUI
map("n", "<Leader>db", "<cmd>DBUIToggle<CR>", { desc = "Toggle DBUI" })
