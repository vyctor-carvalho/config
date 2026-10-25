return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",

      on_colors = function(c)
        c.bg = "#050505"
        c.bg_dark = "#000000"
        c.bg_float = "#0A0A0A"
        c.bg_sidebar = "#050505"

        c.green = "#39FF14"
        c.cyan = "#00D7FF"
        c.fg = "#D8FFE0"
        c.comment = "#3E7A3A"
        c.border = "#1C7C1C"
      end,
    },
  },

  {
    "rebelot/kanagawa.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      theme = "wave",
      transparent = false,
      terminalColors = true,
    },
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
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight",
    },
  },
}
