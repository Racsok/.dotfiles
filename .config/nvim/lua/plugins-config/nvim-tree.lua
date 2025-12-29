local status, nvimtree = pcall(require, "nvim-tree")
if not status then
    return
end

-- Aquí es donde ocurre la "magia" que te falta
nvimtree.setup({
  view = {
    width = 30,
    side = "left",
  },
  -- Otras opciones que quieras agregar luego
})
