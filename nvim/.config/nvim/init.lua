-- Отключаем netrw (опционально)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Автоустановка lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git", lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Настраиваем leader до загрузки плагинов
vim.g.mapleader = ","

-- Загрузка плагинов lazy.nvim
require("lazy").setup("plugins")

local lspconfig = require('lspconfig')
local capabilities = require('cmp_nvim_lsp').default_capabilities() -- если используете nvim-cmp

lspconfig.gopls.setup {
    capabilities = capabilities,
    on_attach = function(client, bufnr)
        local opts = { noremap=true, silent=true, buffer=bufnr }
        -- Go to definition
        vim.keymap.set('n', '<A-i>', vim.lsp.buf.definition, opts)
        -- Find references/usages
        vim.keymap.set('n', '<C-l>', vim.lsp.buf.references, opts)
        -- Toggle quickfix
        vim.api.nvim_set_keymap("n", "<A-f>", "", {
            noremap = true,
            silent = true,
            callback = function()
                local windows = vim.fn.getwininfo()
                for _, win in ipairs(windows) do
                    if win.quickfix == 1 then
                        vim.cmd("cclose")
                        return
                    end
                end
                vim.cmd("cwindow")
            end,
        })
    end,
    flags = {
        debounce_text_changes = 150,
    }
}

require("solarized-osaka").setup({
    styles = {
        keywords = { italic = false },
    },
})

-- Загрузка остальных настроек
require("options")

vim.cmd[[colorscheme solarized-osaka]]
