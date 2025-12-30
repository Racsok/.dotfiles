-- VARIABLES

-- NUMERACIÓN
set.nu = true -- muestra la linea de numeros
set.relativenumber = true 

-- TABULACIÓN Y SANGRIA
set.tabstop = 4
set.softtabstop = 4
set.shiftwidth = 4 -- Espacios al usar > o <
set.smartindent = true

-- COMPORTAMIENTO DE BÚSQUEDA
set.ignorecase = true -- ignorar mayusculas
set.smartcase = true -- si escribo mayúsculas se vulve sensible


-- SISTEMA
set.clipboard = "unnamedplus" --copia al portapapeles del sitema
set.autoindent = true
set.autowrite = true

-- mapper
vim.g.mapleader = " " -- Facilita la busqueda de palabras clave
vim.g.maplocalleader = "\\"vim.g.maplocalleader = "\\"
-- vim.keymap.set("n", "-", vim.cmd.Ex) -- need nvim 0.8+

-- Bufferline
set.termguicolors = true
