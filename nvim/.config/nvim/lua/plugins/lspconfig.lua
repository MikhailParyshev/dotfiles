return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("lspconfig").gopls.setup({})
    end,
    servers = {
        intelephense = {},
    }
}

