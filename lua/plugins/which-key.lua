return {
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300

      local wk = require("which-key")
      wk.register({
        ["<leader>f"] = { name = "+telescope" },
        ["<leader>p"] = { name = "+persistent" },
        ["<leader>c"] = { name = "+code" },
        ["<leader>u"] = { name = "+ui" },
        ["<leader>h"] = { name = "+harpoon" },
        ["<leader>t"] = { name = "+text" },

        ["<leader>1"] = "which_key_ignore",
        ["<leader>2"] = "which_key_ignore",
        ["<leader>3"] = "which_key_ignore",
        ["<leader>4"] = "which_key_ignore",
        ["<leader>5"] = "which_key_ignore",
        ["<leader>6"] = "which_key_ignore",
        ["<leader>7"] = "which_key_ignore",
        ["<leader>8"] = "which_key_ignore",
        ["<leader>9"] = "which_key_ignore",
      })

    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
}
