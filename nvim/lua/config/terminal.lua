return {
  {
    "folke/snacks.nvim",
    opts = {
      terminal = {
        env = {
          -- Força o TERM do Ghostty:
          TERM = "xterm-ghostty",

          -- Ou de forma dinâmica (herda automaticamente o $TERM do emulador onde o Neovim foi aberto):
          -- TERM = vim.env.TERM or "xterm-ghostty",
        },
      },
    },
  },
}
