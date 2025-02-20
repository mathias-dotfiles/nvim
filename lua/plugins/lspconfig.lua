return {
	"neovim/nvim-lspconfig",
	config = function()
		require("lspconfig").jedi_language_server.setup({})
		require("lspconfig").texlab.setup({})
		require("lspconfig").dockerls.setup({})
		require("lspconfig").docker_compose_language_service.setup({})
		require("lspconfig").lua_ls.setup({})
	end,
}
