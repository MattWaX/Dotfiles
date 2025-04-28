return {
    {
        "mfussenegger/nvim-dap",
        dependencies = {
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "nvim-neotest/nvim-nio",
            "williamboman/mason.nvim",
        },
        config = function()
            local dap = require "dap"
            local ui = require "dapui"

            require("dapui").setup()

            require("nvim-dap-virtual-text").setup {}

            -- codelldb configurations.
            dap.adapters.codelldb = {
                type = "executable",
                command = "codelldb",
            }

            dap.configurations.c = {
                {
                    name = "Launch file",
                    type = "codelldb",
                    request = "launch",
                    program = function()
                        return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
                    end,
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                },
            }
            dap.configurations.cpp = dap.configurations.c
            dap.configurations.rust = dap.configurations.c
            -- Add configurations from launch.json
            require("dap.ext.vscode").load_launchjs(nil, {
                ["codelldb"] = { "c", "cpp", "rust" },
            })

            vim.keymap.set("n", "<leader>dd", ui.toggle, { desc = "Debugger toggle breakpoint" })
            vim.keymap.set({ "n", "v" }, "<leader>dp", dap.toggle_breakpoint, { desc = "Debugger toggle breakpoint" })
            -- vim.keymap.set(
            --     "n",
            --     "<Leader>dd",
            --     dap.set_breakpoint(vim.fn.input "Breakpoint condition: "),
            --     { desc = "Debugger set conditional breakpoint" }
            -- )
            vim.keymap.set("n", "<leader>dq", function()
                dap.list_breakpoints()
                vim.cmd "copen"
            end, { desc = "Debugger list breakpoints" })
            vim.keymap.set("n", "<leader>dc", function()
                dap.clear_breakpoints()
                vim.cmd "cclose"
            end, { desc = "Debugger clear all breakpoints" })
            vim.keymap.set("n", "<leader>dh", dap.run_to_cursor, { desc = "Debugger Here run under cursor" })
            vim.keymap.set("n", "<leader>dr", dap.restart, { desc = "Debugger restart" })

            -- Eval var under cursor
            vim.keymap.set("n", "<leader>?", function()
                require("dapui").eval(nil, { enter = true })
            end, { desc = "Debugger evaluete under cursor" })

            vim.keymap.set("n", "<F1>", dap.continue, { desc = "Debugger continue" })
            vim.keymap.set("n", "<F2>", dap.step_into, { desc = "Debugger step into" })
            vim.keymap.set("n", "<F3>", dap.step_over, { desc = "Debugger step over" })
            vim.keymap.set("n", "<F4>", dap.step_out, { desc = "Debugger step out" })
            vim.keymap.set("n", "<F12>", dap.step_back, { desc = "Debbuger step back" })

            dap.listeners.before.attach.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                ui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                ui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                ui.close()
            end
        end,
    },
}
