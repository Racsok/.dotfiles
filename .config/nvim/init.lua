--comandos para nvim con lua
--variables locales
local vo = vim.o --Configuraciones generales
local vw = vim.wo --Ámbito de ventana
local vb = vim.bo --Ámbito de buffer

--variables globales
set = vim.opt --Confuguraciones globales globales, de ventana y de buffer

vim.g.lspconfig_suppress_deprecation_warning = true --ignorar mensaje de version lspconfig

--configuración basica de nvim
require('core.basic') -- configuraciones basicas de interfaz y sistema

-- Cargar configuraciones de plugins
require('core.lazy') -- carga lazy y los plugins
--require("plugins-config.nvim-tree") -- plugin para arbol de directorio
--require("plugins-config.lsp") -- Pyright (el servidor de Python de Microsoft)
--require("plugins-config.treesitter") -- resaltado basico para python
--require("plugins-config.completado") -- autocompletao para python

-- confirguraciones despues de plugins
require('core.keymap') -- configuraciones de atajos de teclado
require('core.colores')

