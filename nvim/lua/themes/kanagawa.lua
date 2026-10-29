local M = {}

M.profiles = {
  neon = {
    theme = "wave",
    transparent = true,

    colors = {
      palette = {
        sumiInk0 = "#000000",
        sumiInk1 = "#050505",
        sumiInk2 = "#0A0A0A",
        sumiInk3 = "#0A0A0A",
        fujiWhite = "#D8FFE0",
        fujiGray = "#3E7A3A",
        springGreen = "#39FF14",
        springBlue = "#00D7FF",
        crystalBlue = "#00D7FF",
        waveAqua2 = "#39FF14",
      },
    },

    overrides = function()
      return {
        LineNr = { fg = "#3E7A3A", bg = "NONE" },
        CursorLineNr = { fg = "#39FF14", bold = true },
        SignColumn = { fg = "#39FF14", bg = "NONE" },
        FoldColumn = { fg = "#00D7FF", bg = "NONE" },
        WinSeparator = { fg = "#1C7C1C", bg = "NONE" },

        DiagnosticSignError = { fg = "#FF5555", bg = "NONE" },
        DiagnosticSignWarn = { fg = "#FFB86C", bg = "NONE" },
        DiagnosticSignInfo = { fg = "#00D7FF", bg = "NONE" },
        DiagnosticSignHint = { fg = "#39FF14", bg = "NONE" },

        GitSignsAdd = { fg = "#39FF14", bg = "NONE" },
        GitSignsChange = { fg = "#00D7FF", bg = "NONE" },
        GitSignsDelete = { fg = "#FF5555", bg = "NONE" },
      }
    end,
  },

  sakura = {
    theme = "wave",
    transparent = true,

    colors = {
      palette = {
        sumiInk0 = "#000000",
        sumiInk1 = "#050505",
        sumiInk2 = "#0A0A0A",
        sumiInk3 = "#0A0A0A",
        fujiWhite = "#F5DDF5",
        fujiGray = "#8B668B",
        springGreen = "#FF79C6",
        springBlue = "#BD93F9",
        crystalBlue = "#BD93F9",
        waveAqua2 = "#FF79C6",
        oniViolet = "#BD93F9",
        sakuraPink = "#FF79C6",
      },
    },

    overrides = function()
      return {
        LineNr = { fg = "#8B668B", bg = "NONE" },
        CursorLineNr = { fg = "#FF79C6", bold = true },
        SignColumn = { fg = "#FF79C6", bg = "NONE" },
        FoldColumn = { fg = "#BD93F9", bg = "NONE" },
        WinSeparator = { fg = "#BD93F9", bg = "NONE" },

        DiagnosticSignError = { fg = "#FF5555", bg = "NONE" },
        DiagnosticSignWarn = { fg = "#FFB86C", bg = "NONE" },
        DiagnosticSignInfo = { fg = "#BD93F9", bg = "NONE" },
        DiagnosticSignHint = { fg = "#FF79C6", bg = "NONE" },

        GitSignsAdd = { fg = "#FF79C6", bg = "NONE" },
        GitSignsChange = { fg = "#BD93F9", bg = "NONE" },
        GitSignsDelete = { fg = "#FF5555", bg = "NONE" },
      }
    end,
  },
}

function M.apply(profile_name)
  local profile = M.profiles[profile_name]

  if not profile then
    vim.notify("Perfil Kanagawa desconhecido: " .. profile_name, vim.log.levels.ERROR)
    return
  end

  require("kanagawa").setup({
    theme = profile.theme,
    transparent = profile.transparent,
    terminalColors = true,
    commentStyle = {},
    keywordStyle = {},
    statementStyle = { bold = true },
    functionStyle = {},
    typeStyle = {},
    colors = profile.colors,
    overrides = profile.overrides,
  })

  vim.cmd.colorscheme("kanagawa-" .. profile.theme)
  vim.g.kanagawa_profile = profile_name
end

return M
