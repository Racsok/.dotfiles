-- CONFIGURACIÓN DE ATAJOS DE TECLADO

local km = vim.keymap

-- Agrega un espacio después del cursor
vim.keymap.set('n', '<leader>s', 'a<Space><Esc>l', { desc = 'Insertar espacio en modo normal' })


--Bufferline
km.set("n", "gb", ":bn<CR>", {noremap = true, silent = true}, { desc = "Pasar al siguiente buffer/pestaña"})
km.set("n", "gB", ":bp<CR>", {noremap = true, silent = true}, { desc = "Pasar al anterior buffer/pestaña"})
