return {
    {
        "lervag/vimtex",
        lazy = false, -- we don't want to lazy load VimTeX
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
            vim.g.vimtex_view_forward_search_on_start = false
            vim.g.vimtex_compiler_latexmk = {
                aux_dir = "/home/MattWaX/.cache/texfiles/",
                out_dir = "/home/MattWaX/.cache/texfiles/",
            }
        end,
    },
}
