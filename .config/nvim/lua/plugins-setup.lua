-- 1. Instalación automática de Lazy.nvim si no está presente
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end


set.rtp:prepend(lazypath)

-- 2. Configuración de los plugins
require("lazy").setup({  
  "nvim-lua/plenary.nvim", -- Librería que usan muchos plugins
  
  -- Un esquema de colores (puedes cambiarlo luego)
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  -- Explorador de archivos (muy superior al nativo)
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },

  -- CONFIGURACIÓN PARA PYTHON
  -- LSP y Mason: El cerebro para Python
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  -- Tree-sitter: Resaltado de sintaxis inteligente
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },


  -- Autocompletado (opcional pero muy recomendado)
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp", -- Fuente de autocompletado para LSP
  "hrsh7th/cmp-buffer",   -- Fuente para palabras en el archivo actual
  -- Snippets (necesarios para que nvim-cmp funcione)
  "L3MON4D3/LuaSnip",
  "saadparwaiz1/cmp_luasnip",
})
