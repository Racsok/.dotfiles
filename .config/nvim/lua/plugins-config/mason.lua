--Pluggin para el administrador de descargas de servidores LSP 
return {
    "mason-org/mason.nvim",
    opts = {
		ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗"
            }
        },
	},
	-- config = function () 
	-- 	require("manson").setup({
	-- 	})
	-- end
}
