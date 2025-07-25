return {
    "ray-x/go.nvim",    -- плагин для Go
    dependencies = {
        "ray-x/guihua.lua",
        "neovim/nvim-lspconfig",
        "nvim-treesitter/nvim-treesitter",
    },
    event = { "CmdlineEnter" }, -- ленивое подключение
    ft = { "go", "gomod" },
    build = ':lua require("go.install").update_all_sync()',
    config = function()
        require("go").setup({
            lsp_inlay_hints = {
                enable = true,
            },
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*.go",
            callback = function()
                require('go.format').goimports()
            end,
            group = vim.api.nvim_create_augroup("GoFormat", {}),
        })
    end,
}
