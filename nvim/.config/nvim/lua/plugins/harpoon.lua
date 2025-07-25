return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
    keys = {
        { "<leader>a", function() require("harpoon"):list():add() end, desc = "Mark file with Harpoon" },
        { "<leader>h", function() require("harpoon").ui:toggle_quick_menu(require("harpoon"):list()) end, desc = "Harpoon Quick Menu" },
        { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "Harpoon to file 1" },
        { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "Harpoon to file 2" },
        { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "Harpoon to file 3" },
        { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "Harpoon to file 4" },
        { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "Harpoon to file 5" },
    },
}

