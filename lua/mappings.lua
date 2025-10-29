require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- ATAJOS MARKDOWN

-- Modo normal: aplica negrita a la palabra bajo el cursor
map("n", "<leader>mb", [[yiwciw**<C-r>"**<Esc>]], { desc = "Negrita Markdown a palabra" })


-- Modo visual: aplica negrita al texto seleccionado
map("v", "<leader>mb", [[c**<C-r>"**<Esc>]], { desc = "Negrita Markdown a selección" })

-- Modo normal: aplica cursiva a la palabra bajo el cursor
map("n", "<leader>mi", [[yiwciw*<C-r>"*<Esc>]], { desc = "Cursiva Markdown a palabra" })

-- Modo visual: aplica cursiva al texto seleccionado
map("v", "<leader>mi", [[c*<C-r>"*<Esc>]], { desc = "Cursiva Markdown a selección" })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
