-- Formateo automático para archivos Lua usando stylua del sistema al guardar
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*.lua",
  callback = function()
    vim.cmd("silent !stylua %")  -- Usa stylua del PATH; "silent" evita output en pantalla
  end,
})
