-- CONFIGURACIÓN DE ATAJOS DE TECLADO

local km = vim.keymap

--km.set("n", "<C-q>", ":NvimTreeToggle<CR>", { desc = "Abrir/Cerrar explorador de archivos" })
--Bufferline
km.set("n", "gb", ":bn<CR>", {noremap = true, silent = true}, { desc = "Pasar al siguiente buffer/pestaña"})
km.set("n", "gB", ":bp<CR>", {noremap = true, silent = true}, { desc = "Pasar al anterior buffer/pestaña"})
