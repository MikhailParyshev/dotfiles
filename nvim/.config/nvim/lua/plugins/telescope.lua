return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",           -- lazy-load on Telescope command
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    width = 0.99,           -- this means 100% of available columns
                    height = 0.99,          -- 100% of available rows
                    preview_width = 0.5, -- preview takes 50% of width
                }
            },
            sorting_strategy = "ascending",
            winblend = 0,
        },
    },
}

