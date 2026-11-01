local dap = require "dap"
local view = require "dap-view"
view.setup {
    winbar = {
        show = true,
        -- You can add a "console" section to merge the terminal with the other views
        sections = { "repl", "console", "scopes", "watches", "exceptions", "breakpoints", "threads" },
        -- Must be one of the sections declared above
        default_section = "scopes",

        controls = {
            enabled = true,
            position = "right",
            buttons = {
                "play",
                "step_over",
                "step_into",
                "step_out",
                "step_back",
                "run_last",
                "terminate",
                "disconnect",
            },
            custom_buttons = {},
        },
    },
    icons = {
        collapsed = "󰅂 ",
        disabled = "",
        enabled = "",
        expanded = "󰅀 ",
        filter = "󰈲",
        negate = " ",
        pause = "[F5 ]",
        play = "[F5 ]",
        step_over = "[F6 ]",
        step_into = "[F7 ]",
        step_out = "[F8 ]",
        step_back = "[F9 ]",
        run_last = "[F10 ]",
        terminate = "[F11 ]",
        disconnect = "[F12 ]",
    },
    windows = {
        size = 0.25,
        position = "below",
        terminal = {
            hide = true,
        },
    },
    -- Requires neovim 0.12+
    virtual_text = {
        enabled = true,
        -- Supported options include "inline", "eol", and "eol_right_align"
        position = "eol",
    },
    switchbuf = "usetab,uselast",
    auto_toggle = "open",
}

-- codelldb configurations.
dap.adapters.gdb = {
    type = "executable",
    command = "gdb",
    args = { "--interpreter=dap", "--quiet", "-nx", "--eval-command", "set print pretty on" },
}
dap.adapters.codelldb = {
    type = "executable",
    command = "codelldb",
}

dap.configurations.c = {
    {
        name = "Launch",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end,
        args = {}, -- provide arguments if needed
        cwd = "${workspaceFolder}",
        stopAtBeginningOfMainSubprogram = false,
    },
    -- {
    --     name = "Select and attach to process",
    --     type = "gdb",
    --     request = "attach",
    --     program = function()
    --         return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --     end,
    --     pid = function()
    --         local name = vim.fn.input "Executable name (filter): "
    --         return require("dap.utils").pick_process { filter = name }
    --     end,
    --     cwd = "${workspaceFolder}",
    -- },
    -- {
    --     name = "Attach to gdbserver :1234",
    --     type = "gdb",
    --     request = "attach",
    --     target = "localhost:1234",
    --     program = function()
    --         return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
    --     end,
    --     cwd = "${workspaceFolder}",
    -- },
}
dap.configurations.cpp = dap.configurations.c
dap.configurations.rust = {
    {
        name = "Launch file",
        type = "codelldb",
        request = "launch",
        program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/target/debug/", "file")
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
    },
}

-- dap.adapters.java = {
--     type = "server",
--     host = "127.0.0.1",
--     port = 5005,
-- }

-- dap.configurations.java = {
--     {
--         type = "java",
--         name = "Debug (Attach)",
--         request = "attach",
--         hostName = "127.0.0.1",
--         port = 5005,
--     },
-- }

vim.keymap.set("n", "gdb", dap.toggle_breakpoint, { desc = "Debugger toggle breakpoint" })
vim.keymap.set("n", "gdt", view.toggle, { desc = "Debugger toggle view" })
vim.keymap.set("n", "gdw", "<CMD>DapViewWatch<CR>", { desc = "Debugger watch variable" })
vim.keymap.set("n", "<F5>", dap.continue, { desc = "Debugger continue" })
vim.keymap.set("n", "<F6>", dap.step_over, { desc = "Debugger continue" })
vim.keymap.set("n", "<F7>", dap.step_into, { desc = "Debugger continue" })
vim.keymap.set("n", "<F8>", dap.step_out, { desc = "Debugger continue" })
vim.keymap.set("n", "<F9>", dap.step_back, { desc = "Debugger continue" })
vim.keymap.set("n", "<F10>", dap.run_last, { desc = "Debugger continue" })
vim.keymap.set("n", "<F11>", dap.terminate, { desc = "Debugger continue" })
vim.keymap.set("n", "<F12>", dap.disconnect, { desc = "Debugger continue" })

require("nvim-dap-virtual-text").setup {
    commented = true,
}
