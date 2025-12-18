-- CONFIGURACIÓN DE ATAJOS DE TECLADO

local km = vim.keymap

km.set("n", "<C-q>", ":NvimTreeToggle<CR>", { desc = "Abrir/Cerrar explorador de archivos" })
