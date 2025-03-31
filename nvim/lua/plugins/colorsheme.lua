return {
    {
        "cpea2506/one_monokai.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("one_monokai").setup({
                transparent = true,
                highlights = function(colors)
                    return {
                        NormalFloat = { fg = colors.fg, bg = colors.bg }
                    }
                end
            })
        end,
    }
}
