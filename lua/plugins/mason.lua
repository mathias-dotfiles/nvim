return {
	"williamboman/mason.nvim",
	dependencies = {
		"nvim-telescope/telescope.nvim",
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		local mason = require("mason")
		mason.setup()
	end,
}
