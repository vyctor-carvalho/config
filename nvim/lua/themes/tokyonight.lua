local M = {}

M.profiles = {
  neon = {
    style = "night",
    transparent = true,

    colors = {
      bg = "#050505",
      bg_dark = "#000000",
      bg_float = "#0A0A0A",
      bg_sidebar = "#050505",
      green = "#39FF14",
      cyan = "#00D7FF",
      fg = "#D8FFE0",
      comment = "#3E7A3A",
      border = "#1C7C1C",
    },
  },

  sakura = {
    style = "night",
    transparent = true,

    colors = {
      bg = "#050505",
      bg_dark = "#000000",
      bg_sidebar = "#16121D",
      green = "#FF79C6",
      cyan = "#BD93F9",
      fg = "#F5DDF5",
      comment = "#8B668B",
      border = "#BD93F9",
    },
  },
}

function M.apply(profile_name)
  local profile = M.profiles[profile_name]

  if not profile then
    vim.notify("Perfil TokyoNight desconhecido: " .. profile_name, vim.log.levels.ERROR)
    return
  end

  require("tokyonight").setup({
    style = profile.style,
    transparent = profile.transparent,

    styles = {
      sidebars = "dark",
      floats = "transparent",
    },

    on_colors = function(colors)
      for name, value in pairs(profile.colors) do
        colors[name] = value
      end
    end,

    on_highlights = function(highlights, colors)
      highlights.Normal = {
        fg = colors.fg,
        bg = "NONE",
      }

      highlights.NormalNC = {
        fg = colors.fg,
        bg = "NONE",
      }

      highlights.NormalFloat = {
        fg = colors.fg,
        bg = "NONE",
      }

      highlights.FloatBorder = {
        fg = colors.border,
        bg = "NONE",
      }

      highlights.NeoTreeNormal = {
        fg = colors.fg,
        bg = "#16121D",
      }

      highlights.NeoTreeNormalNC = {
        fg = colors.fg,
        bg = "#16121D",
      }

      highlights.LineNr = {
        fg = "#8B668B",
        bg = "#282330",
      }

      highlights.CursorLineNr = {
        fg = "#FF79C6",
        bg = "#16121D",
        bold = true,
      }

      highlights.CursorLine = {
        bg = "#211927",
      }

      highlights.WinSeparator = {
        fg = "#BD93F9",
      }

      highlights.VertSplit = {
        fg = "#BD93F9",
      }

      highlights.Comment = {
        fg = "#8B668B",
        italic = true,
      }
    end,
  })

  vim.cmd.colorscheme("tokyonight-" .. profile.style)
  vim.g.tokyonight_profile = profile_name
end

return M
