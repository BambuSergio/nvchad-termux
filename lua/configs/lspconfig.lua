-- Carga los defaults (ej. lua_ls, que podría usar la vieja API internamente)
require("nvchad.configs.lspconfig").defaults()

-- No necesitas require "lspconfig" para el setup moderno

-- EXAMPLE
local servers = { "html", "cssls", "pyright" }  -- Agrega más servidores si necesitas
local nvlsp = require "nvchad.configs.lspconfig"

-- Configura y habilita los LSPs con defaults de NvChad usando la nueva API
for _, lsp in ipairs(servers) do
  vim.lsp.config(lsp, {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  })
  vim.lsp.enable(lsp)
end
