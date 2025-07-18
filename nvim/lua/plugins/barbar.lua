return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim", -- OPTIONAL: for git status
			"nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			clickable = true,
			animation = false,
			icons = {
				button = false,
				separator_at_end = false,
			},
			minimum_padding = 0,
			no_name_title = "unnamed",
		},
		version = "^1.0.0", -- optional: only update when a new 1.x version is released
	},
}
