local M = {}

local themes = {
  kanagawa = require("themes.kanagawa"),
  tokyonight = require("themes.tokyonight"),
}

function M.apply(theme_name, profile_name)
  local theme = themes[theme_name]

  if not theme then
    vim.notify("Tema desconhecido: " .. theme_name, vim.log.levels.ERROR)
    return
  end

  theme.apply(profile_name)
  vim.g.current_theme = theme_name
end

function M.setup()
  vim.api.nvim_create_user_command("Theme", function(opts)
    local args = vim.split(opts.args, "%s+", { trimempty = true })

    if #args ~= 2 then
      vim.notify("Uso: :Theme <tema> <perfil>", vim.log.levels.WARN)
      return
    end

    M.apply(args[1], args[2])
  end, {
    nargs = "+",
    complete = function(_, line)
      local args = vim.split(line, "%s+", { trimempty = true })

      if #args <= 2 then
        return vim.tbl_keys(themes)
      end

      local theme = themes[args[2]]

      if theme then
        return vim.tbl_keys(theme.profiles)
      end

      return {}
    end,
    desc = "Seleciona um tema e seu perfil",
  })
end

return M
