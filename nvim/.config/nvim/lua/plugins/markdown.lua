vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "RenderMarkdownInlineHighlight", { bg = "#75662E" })
    end,
})

return {
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "nvim-tree/nvim-web-devicons" }, -- if you prefer nvim-web-devicons
    config = function()
        require("render-markdown").setup {
            enabled = true,
            preset = "Obsidian",
            completions = {
                blink = { enabled = true },
                lsp = { enabled = true },
                filter = {
                    checkbox = function()
                        return true
                    end,
                },
            },
            heading = {
                enabled = false,
                atx = true,
                setext = true,
                sign = true,
                icons = { "󰎤 ", "󰎧 ", "󰎪 ", "󰎭 ", "󰎱 ", "󰎳 " },
                position = "overlay",
                signs = { "#>" },
                width = "block",
                border = true,
                above = " ",
                below = "=",
            },
            dash = {
                enabled = true,
                icon = "─",
                width = 79,
                -- Amount of margin to add to the left of dash.
                -- If a float < 1 is provided it is treated as a percentage of available window space.
                left_margin = 0,
                -- Highlight for the whole line generated from the icon.
                highlight = "RenderMarkdownDash",
            },
            bullet = {
                enabled = true,
                icons = { "󰨔" },
            },
            checkbox = {
                enabled = true,
                unchecked = {
                    icon = "󰄱 ",
                    highlight = "RenderMarkdownUnchecked",
                    scope_highlight = nil,
                },
                checked = {
                    icon = " ",
                    highlight = "RenderMarkdownChecked",
                    scope_highlight = nil,
                },
                custom = {
                    inprogress = {
                        raw = "[>]",
                        rendered = "󰛂 ",
                        highlight = "RenderMarkdownChecked",
                        scope_highlight = nil,
                    },
                    tilde = {
                        raw = "[~]",
                        rendered = "󰅗 ",
                        highlight = "RenderMarkdownChecked",
                        scope_highlight = nil,
                    },
                    important = {
                        raw = "[!]",
                        rendered = "󰀧 ",
                        highlight = "RenderMarkdownChecked",
                        scope_highlight = nil,
                    },
                },
            },
            inline_highlight = {
                enabled = true,
                render_modes = true,
                highlight = "RenderMarkdownInlineHighlight",
            },
            callout = {
                definizione = {
                    raw = "[!DEF]",
                    rendered = " Definizione",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                formulario = {
                    raw = "[!FORMULARIO]",
                    rendered = "󰒠 Formulario",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                teorema = {
                    raw = "[!TEOREMA]",
                    rendered = " Teorema",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                dimostrazione = {
                    raw = "[!DIM]",
                    rendered = "󰡱 Dimostrazione",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                osservazione = {
                    raw = "[!OSS]",
                    rendered = " Osservazione",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                esempio = {
                    raw = "[!ESEMPIO]",
                    rendered = "󰉹 Esempio",
                    highlight = "RenderMarkdownHint",
                    category = "obsidian",
                },

                note = {
                    raw = "[!NOTE]",
                    rendered = "󰋽 Note",
                    highlight = "RenderMarkdownInfo",
                    category = "github",
                },
                tip = {
                    raw = "[!TIP]",
                    rendered = "󰌶 Tip",
                    highlight = "RenderMarkdownSuccess",
                    category = "github",
                },
                important = {
                    raw = "[!IMPORTANT]",
                    rendered = "󰅾 Important",
                    highlight = "RenderMarkdownHint",
                    category = "github",
                },
                warning = {
                    raw = "[!WARNING]",
                    rendered = "󰀪 Warning",
                    highlight = "RenderMarkdownWarn",
                    category = "github",
                },
                caution = {
                    raw = "[!CAUTION]",
                    rendered = "󰳦 Caution",
                    highlight = "RenderMarkdownError",
                    category = "github",
                },
                abstract = {
                    raw = "[!ABSTRACT]",
                    rendered = "󰨸 Abstract",
                    highlight = "RenderMarkdownInfo",
                    category = "obsidian",
                },
                summary = {
                    raw = "[!SUMMARY]",
                    rendered = "󰨸 Summary",
                    highlight = "RenderMarkdownInfo",
                    category = "obsidian",
                },
                tldr = {
                    raw = "[!TLDR]",
                    rendered = "󰨸 Tldr",
                    highlight = "RenderMarkdownInfo",
                    category = "obsidian",
                },
                info = {
                    raw = "[!INFO]",
                    rendered = "󰋽 Info",
                    highlight = "RenderMarkdownInfo",
                    category = "obsidian",
                },
                todo = {
                    raw = "[!TODO]",
                    rendered = "󰗡 Todo",
                    highlight = "RenderMarkdownInfo",
                    category = "obsidian",
                },
                hint = {
                    raw = "[!HINT]",
                    rendered = "󰌶 Hint",
                    highlight = "RenderMarkdownSuccess",
                    category = "obsidian",
                },
                success = {
                    raw = "[!SUCCESS]",
                    rendered = "󰄬 Success",
                    highlight = "RenderMarkdownSuccess",
                    category = "obsidian",
                },
                check = {
                    raw = "[!CHECK]",
                    rendered = "󰄬 Check",
                    highlight = "RenderMarkdownSuccess",
                    category = "obsidian",
                },
                done = {
                    raw = "[!DONE]",
                    rendered = "󰄬 Done",
                    highlight = "RenderMarkdownSuccess",
                    category = "obsidian",
                },
                question = {
                    raw = "[!QUESTION]",
                    rendered = "󰘥 Question",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                help = {
                    raw = "[!HELP]",
                    rendered = "󰘥 Help",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                faq = {
                    raw = "[!FAQ]",
                    rendered = "󰘥 Faq",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                attention = {
                    raw = "[!ATTENTION]",
                    rendered = "󰀪 Attention",
                    highlight = "RenderMarkdownWarn",
                    category = "obsidian",
                },
                failure = {
                    raw = "[!FAILURE]",
                    rendered = "󰅖 Failure",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                fail = {
                    raw = "[!FAIL]",
                    rendered = "󰅖 Fail",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                missing = {
                    raw = "[!MISSING]",
                    rendered = "󰅖 Missing",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                danger = {
                    raw = "[!DANGER]",
                    rendered = "󱐌 Danger",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                error = {
                    raw = "[!ERROR]",
                    rendered = "󱐌 Error",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                bug = {
                    raw = "[!BUG]",
                    rendered = "󰨰 Bug",
                    highlight = "RenderMarkdownError",
                    category = "obsidian",
                },
                example = {
                    raw = "[!EXAMPLE]",
                    rendered = "󰉹 Example",
                    highlight = "RenderMarkdownHint",
                    category = "obsidian",
                },
                quote = {
                    raw = "[!QUOTE]",
                    rendered = "󱆨 Quote",
                    highlight = "RenderMarkdownQuote",
                    category = "obsidian",
                },
                cite = {
                    raw = "[!CITE]",
                    rendered = "󱆨 Cite",
                    highlight = "RenderMarkdownQuote",
                    category = "obsidian",
                },
            },
            latex = { enabled = false },
        }
    end,
}
