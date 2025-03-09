--return {
  --"ThePrimeagen/harpoon",
  --branch = "harpoon2",
  --dependencies = { "nvim-lua/plenary.nvim" },
--
  --config = function()
    --local harpoon = require("harpoon")
    --harpoon:setup()
--
    --vim.keymap.set("n", "<leader>a", function() harpoon:list():add() end)
    --vim.keymap.set("n", ";;", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
--
    --vim.keymap.set("n", "<C-h>", function() harpoon:list():select(1) end)
    --vim.keymap.set("n", "<C-j>", function() harpoon:list():select(2) end)
    --vim.keymap.set("n", "<C-k>", function() harpoon:list():select(3) end)
    --vim.keymap.set("n", "<C-l>", function() harpoon:list():select(4) end)
  --end,
--
--}

return {
    "theprimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("harpoon"):setup({

      -- sets the marks upon calling `toggle` on the ui, instead of require `:w`.
      -- save_on_toggle = false,

      -- saves the harpoon file upon every change. disabling is unrecommended.
      -- save_on_change = true,

      -- sets harpoon to run the command immediately as it's passed to the terminal when calling `sendCommand`.
      -- enter_on_sendcmd = false,

      -- closes any tmux windows harpoon that harpoon creates when you close Neovim.
      -- tmux_autoclose_windows = false,

      -- filetypes that you want to prevent from adding to the harpoon list menu.
      -- excluded_filetypes = { "harpoon" },

      -- set marks specific to each git branch inside git repository
      -- mark_branch = false,

      -- enable tabline with harpoon marks
      -- tabline = false,
      -- tabline_prefix = "   ",
      -- tabline_suffix = "   ",

      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
        height = vim.api.nvim_win_get_height(0) - 4,
      }

    })
    end,
    keys = {
      { ";a", function() require("harpoon"):list():add() end, desc = "harpoon file", },
      { ";;", function() local harpoon = require("harpoon") harpoon.ui:toggle_quick_menu(harpoon:list()) end, desc = "harpoon quick menu", },
      { "<leader>1", function() require("harpoon"):list():select(1) end, desc = "harpoon to file 1", },
      { "<leader>2", function() require("harpoon"):list():select(2) end, desc = "harpoon to file 2", },
      { "<leader>3", function() require("harpoon"):list():select(3) end, desc = "harpoon to file 3", },
      { "<leader>4", function() require("harpoon"):list():select(4) end, desc = "harpoon to file 4", },
      { "<leader>5", function() require("harpoon"):list():select(5) end, desc = "harpoon to file 5", },
    },
  }





