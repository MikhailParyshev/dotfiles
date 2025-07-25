local opt = vim.opt

opt.number = true           -- включить номера строк
opt.relativenumber = true   -- относительные номера
opt.tabstop = 4             -- ширина таба 4 пробела
opt.shiftwidth = 4          -- отступ 4 пробела
opt.expandtab = true        -- использовать пробелы вместо табов
opt.smartindent = true      -- автоотступы
opt.wrap = false            -- не переносить строки
opt.ignorecase = true       -- игнорировать регистр при поиске
opt.smartcase = true        -- но учитывать если есть заглавные буквы
opt.termguicolors = true    -- true color
opt.cursorline = true       -- подсвечивать текущую строку
opt.signcolumn = "yes"

-- Live grep
vim.keymap.set('n', '<leader>f', require('telescope.builtin').live_grep, { desc = "Live grep" })
-- Find files
vim.keymap.set('n', '<leader>n', require('telescope.builtin').find_files, { desc = "Find files" })

