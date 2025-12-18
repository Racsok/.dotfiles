--comandos para nvim con lua
--variables locales
local vo = vim.o --Configuraciones generales
local vw = vim.wo --Ámbito de ventana
local vb = vim.bo --Ámbito de buffer

--variables globales
set = vim.opt --Confuguraciones globales globales, de ventana y de buffer

--configuración basica de nvim
require('core.basic') -- configuraciones basicas de interfaz y sistema
require('plugins-setup') -- carga lazy y los plugins

-- Cargar configuraciones de plugins
require("plugins-config.nvim-tree")


-- atajos + atajos de pluggins
require('core.keymap') -- configuraciones de atajos de teclado
