vim.pack.add {
    -- dependencies
    "https://github.com/nvim-tree/nvim-web-devicons",
    "https://github.com/b0o/SchemaStore.nvim",
    "https://github.com/nvim-lua/plenary.nvim",
    -- "https://github.com/nvim-neotest/nvim-nio",
    -- core
    "https://github.com/nvim-treesitter/nvim-treesitter",
    "https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
    "https://github.com/christoomey/vim-tmux-navigator",
    "https://github.com/stevearc/oil.nvim",
    "https://github.com/tpope/vim-dispatch",
    "https://github.com/tpope/vim-fugitive",
    -- extra
    "https://github.com/williamboman/mason.nvim",
    "https://github.com/stevearc/conform.nvim",
    "https://github.com/nvim-telescope/telescope.nvim",
    "https://github.com/lewis6991/gitsigns.nvim",
    "https://github.com/folke/which-key.nvim",
    "https://github.com/RaafatTurki/hex.nvim",
    -- "https://github.com/mfussenegger/nvim-dap",
    -- "https://github.com/rcarriga/nvim-dap-ui",
    -- "https://github.com/theHamsta/nvim-dap-virtual-text",
    -- cosmetics
    "https://github.com/goolord/alpha-nvim",
    -- "https://github.com/akinsho/bufferline.nvim",
    "https://github.com/nvim-lualine/lualine.nvim",
    "https://github.com/uZer/pywal16.nvim",
    "https://github.com/norcalli/nvim-colorizer.lua",
    "https://github.com/Oniup/ignite.nvim",
    "https://github.com/TaurusOlson/basalt.vim",
}

vim.cmd.packadd "nvim.difftool"
vim.cmd.packadd "nvim.undotree"

vim.iter(vim.api.nvim_get_runtime_file("lua/plugins/*.lua", true)):map(function(file)
    require("plugins/" .. vim.fn.fnamemodify(file, ":t:r"))
end)
