return {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
        require("nvim-autopairs").setup {}
        local npairs = require "nvim-autopairs"
        local rule = require "nvim-autopairs.rule"
        npairs.add_rules {
            rule("$", "$", { "tex", "latex", "typst" })
                :with_pair((require "nvim-autopairs.conds").not_after_regex [=[[%w%%%'%[%"%.%`]]=])
                :with_pair((require "nvim-autopairs.conds").not_before_regex [=[[%w%%%'%[%"%.%`]]=]),
        }
    end,
}
