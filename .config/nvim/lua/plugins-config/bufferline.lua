-- Esto es para las pestañas
return {
	'akinsho/bufferline.nvim',
	version = "*",
	dependencies = 'nvim-tree/nvim-web-devicons',
	config = function() 
		require("bufferline").setup({
			options = {
				show_close_icon = false
			}
		})	
	end
}

