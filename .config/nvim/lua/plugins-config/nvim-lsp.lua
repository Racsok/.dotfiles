-- Paquete de configuraciones para los distintos servidores instalados de LSP
return {
	"neovim/nvim-lspconfig",
	config = function()
		vim.lsp.enable({
			"lua_ls", -- lua-language-server
			"pyright", -- pyright
		})
	end
}
