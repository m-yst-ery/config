return {
    {
        "catppuccin/nvim",
        config = function()
            require("catppuccin").setup({
                flavour = "mocha",
                transparent_background = true,
            })
        end
    },
    {
        "loctvl842/monokai-pro.nvim",
        lazy = false,
        priority = 1000,
            opts = {
      transparent_background = true,
      devicons = true,
      filter = "ristretto", -- classic | octagon | pro | machine | ristretto | spectrum
      inc_search = "background", -- underline | background
      background_clear = {
        "nvim-tree",
        -- "neo-tree",
        "bufferline",
        "telescope",
        "toggleterm",
      },
      plugins = {
        indent_blankline = {
          context_highlight = "pro", -- default | pro
          context_start_underline = true,
        },
      },
    },
        config = function(_, opts)
            local monokai = require("monokai-pro")
            monokai.setup(opts)
            monokai.load()
        end,
    }
}
