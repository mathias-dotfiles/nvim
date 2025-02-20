return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		"3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		{
			"s1n7ax/nvim-window-picker",
			version = "2.*",
			config = function()
				require("window-picker").setup({
					filter_rules = {
						include_current_win = false,
						autoselect_one = true,
						-- filter using buffer options
						bo = {
							-- if the file type is one of following, the window will be ignored
							filetype = { "neo-tree", "neo-tree-popup", "notify" },
							-- if the buffer type is one of following, the window will be ignored
							buftype = { "terminal", "quickfix" },
						},
					},
				})
			end,
		},
	},
	config = function()
		-- Example setup (you can add your custom configurations here)
		require("neo-tree").setup({
			-- your Neotree configurations
			close_if_last_window = true,
			enable_git_status = true,
			enable_diagnostic = true,
			default_component_configs = {
				git_status = {
					symbols = {
						-- Change type
						added = "+",
						deleted = "x",
						modified = "~",
						renamed = "→",
						-- Status type
						untracked = "-",
						ignored = "I",
						unstaged = "!",
						staged = "󰄬",
						conflict = "󰚌",
					},
				},
			},
		})

		-- Set up key mappings for Neotree
		vim.keymap.set(
			"n",
			"<leader>1",
			":Neotree toggle<CR>",
			{ noremap = true, silent = true, desc = "Toggle Neotree" }
		)
		vim.keymap.set(
			"n",
			"<leader>11",
			":Neotree focus<CR>",
			{ noremap = true, silent = true, desc = "Focus Neotree" }
		)
	end,
}
