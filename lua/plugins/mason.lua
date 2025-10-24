return {
  {
    "williamboman/mason.nvim",
    opts = function()
      -- Carga la lista por defecto de NvChad (si existe)
      local ensure_installed = require("nvchad.configs.mason").ensure_installed or {}

      -- Filtra "lua-language-server" y "stylua" si están presentes
      ensure_installed = vim.tbl_filter(function(tool)
        return tool ~= "lua-language-server" and tool ~= "stylua"
      end, ensure_installed)

      -- Agrega tu lista personalizada
      vim.list_extend(ensure_installed, { "prettier", "pyright", "shfmt" })

      -- Retorna las opciones finales
      return { ensure_installed = ensure_installed }
    end,
  },
}
