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
  }
})
