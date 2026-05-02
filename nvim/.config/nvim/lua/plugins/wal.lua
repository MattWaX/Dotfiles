vim.cmd.colorscheme "pywal16"
-- Use fwatch to watch for changes in wallust theme
vim.pack.add({"https://github.com/rktjmp/fwatch.nvim"})
local fwatch = require('fwatch')
fwatch.watch(vim.env.HOME .. "/.cache/wal/colors-wal.vim", "colorscheme pywal16")
