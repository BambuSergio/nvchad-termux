local options = {
  formatters_by_ft = {
    lua = {},
    css = { "prettier" },
    html = { "prettier" },
    sh = { "shfmt" },
    bash = { "shfmt" },
    zsh = { "shfmt" },
    python = { "isort", "black" },
  },

  -- formatters = {
    -- stylua = {
      -- Especificamos la ruta completa al ejecutable de stylua que fue instalado con 'pkg install stylua'.
      -- command = "/data/data/com.termux/files/usr/bin/stylua",
    -- },
  -- },

  -- format_on_save = {
  --   -- These options will be passed to conform.format()
  --   timeout_ms = 500,
  --   lsp_fallback = true,
  -- },
}

return options
