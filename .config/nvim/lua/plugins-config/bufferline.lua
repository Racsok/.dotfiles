-- Esto es para las pestañas
return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  opts = {
    options = {
      show_close_icon = false,
      separator_style = "thin", -- Opcional: le da un look más limpio
    },
  },
  keys = {
    { "<leader>bp", "<Cmd>BufferLinePick<CR>", desc = "Ir a pestaña específica" },
    { "<leader>bd", "<Cmd>bdelete<CR>", desc = "Cerrar pestaña actual" },
    { "<S-h>", "<Cmd>BufferLineCyclePrev<CR>", desc = "Pestaña anterior" },
    { "<S-l>", "<Cmd>BufferLineCycleNext<CR>", desc = "Siguiente pestaña" },
  },
}

