-- Treesiter ya esta enneovim, nvim treesiter es un paquete de configuraciones
-- para Treesiter, resaltado para cada tipó de codigo
return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  configs = function ()
	  require'nvim-treesitter.configs'.setup {
		  ensure_installed = { "python", "lua", "bash", "vim", "marckdown", "javascript", "css", "html" },
		  auto_install = true,
		  highlight = {
			  enable = true,
			  additional_vim_regex_highlighting = false,
		  },
	  }
  end
	
}
