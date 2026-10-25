return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      vim.api.nvim_set_hl(0, "@keyword", { fg = "#00D7FF", bold = true })

      vim.api.nvim_set_hl(0, "@function", {
        fg = "#39FF14",
      })

      vim.api.nvim_set_hl(0, "@function.call", {
        fg = "#00D7FF",
      })

      vim.api.nvim_set_hl(0, "@type", {
        fg = "#62E8FF",
      })

      vim.api.nvim_set_hl(0, "@string", {
        fg = "#72FF72",
      })

      vim.api.nvim_set_hl(0, "@comment", {
        fg = "#3E7A3A",
        italic = true,
      })

      vim.api.nvim_set_hl(0, "@number", {
        fg = "#FFD84D",
      })

      return opts
    end,
  },
}
