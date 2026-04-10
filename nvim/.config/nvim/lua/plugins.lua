vim.pack.add {
    -- dependencies
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/b0o/SchemaStore.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    -- core
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/christoomey/vim-tmux-navigator",
    "https://github.com/tpope/vim-dispatch",
    "https://github.com/tpope/vim-fugitive",
    -- extra
    "https://github.com/williamboman/mason.nvim",
    "https://github.com/stevearc/conform.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/windwp/nvim-autopairs",
    "https://github.com/folke/which-key.nvim",
    "https://github.com/RaafatTurki/hex.nvim",
    -- cosmetics
    "https://github.com/goolord/alpha-nvim",
    "https://github.com/akinsho/bufferline.nvim",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/uZer/pywal16.nvim",
    "https://github.com/Oniup/ignite.nvim",
    "https://github.com/TaurusOlson/basalt.vim",
}

vim.cmd.packadd "nvim.difftool"
vim.cmd.packadd "nvim.undotree"

require "plugins/alpha"
require "plugins/autopair"
require "plugins/bufferline"
require "plugins/conform"
require "plugins/dadbod"
require "plugins/dap"
require "plugins/git"
require "plugins/hex"
require "plugins/lualine"
require "plugins/markdown"
require "plugins/mason"
require "plugins/obsidian"
require "plugins/oil"
require "plugins/telescope"
require "plugins/tex"
require "plugins/tmux-integration"
require "plugins/treesitter"
require "plugins/wal"
require "plugins/whick-key"
