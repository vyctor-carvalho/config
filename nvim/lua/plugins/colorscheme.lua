local themes = require("themes")

return {
  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    transparent = false,
  },

  {
    "folke/tokyonight.nvim",
    lazy = false,
    transparent = false,
    priority = 1000,

    config = function()
      themes.setup()
      themes.apply("tokyonight", "sakura")
    end,
  },

  {
    "catppuccin/nvim",
    name = "catppuccin",
    opts = {
      flavour = "mocha",
    },
  },

  -- Gruvbox
  {
    "ellisonleao/gruvbox.nvim",
    opts = {
      contrast = "hard",
      transparent_mode = false,
    },
  },

  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      variant = "default",
      transparent = false,
      saturation = 1,
      italic_comments = false,
      terminal_colors = true,
    },
  },

  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "cyberdream",
    },
  },
}
