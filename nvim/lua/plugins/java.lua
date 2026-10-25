local java_home = vim.fn.expand("~/.sdkman/candidates/java/25.0.1.0+8-amzn")
local java_25 = java_home .. "/bin/java"

local mason = vim.fn.stdpath("data") .. "/mason"
local jdtls_bin = mason .. "/bin/jdtls"
local lombok = mason .. "/packages/jdtls/lombok.jar"

return {
  {
    "mfussenegger/nvim-jdtls",
    opts = function(_, opts)
      -- Executa o JDTLS com o Java 25 e carrega o agente Lombok (se existir).
      local cmd = {
        jdtls_bin,
        "--java-executable=" .. java_25,
      }

      if vim.uv.fs_stat(lombok) then
        table.insert(cmd, "--jvm-arg=-javaagent:" .. lombok)
      end

      opts.cmd = cmd

      opts.settings = opts.settings or {}

      opts.settings.java = vim.tbl_deep_extend("force", opts.settings.java or {}, {
        eclipse = {
          downloadSources = true,
        },
        maven = {
          downloadSources = true,
        },
        configuration = {
          updateBuildConfiguration = "interactive",
          -- JDK usado para compilar/analisar seus projetos.
          runtimes = {
            {
              name = "JavaSE-25",
              path = java_home,
              default = true,
            },
          },
        },
        import = {
          maven = {
            enabled = true,
          },
        },
        saveActions = {
          organizeImports = true,
        },
      })

      return opts
    end,
  },
}
