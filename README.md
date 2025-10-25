NvChad 2.5 configurado para Termux.

En Neovim sobre Termux, si se instalan con Mason **stylua** y **lua-language-server** dará errores al editar archivos de LUA. Instalar desde los repositorios de Termux estos paquetes para no usarlos desde Mason.

Con esta configuración, al ejecutar en la línea de comandos de Neovim `:MasonInstallAll`, Mason no instalará dichos paquetes y Neovim los usará del sistema.

Se usa la nueva API vim.lsp.config() para configurar los LSP.

---

**This repo is supposed to be used as config by NvChad users!**

- The main nvchad repo (NvChad/NvChad) is used as a plugin by this repo.
- So you just import its modules , like `require "nvchad.options" , require "nvchad.mappings"`
- So you can delete the .git from this repo ( when you clone it locally ) or fork it :)

# Credits

1) Lazyvim starter https://github.com/LazyVim/starter as nvchad's starter was inspired by Lazyvim's . It made a lot of things easier!
