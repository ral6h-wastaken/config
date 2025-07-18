local line_oran = "#F3A600"
return {
	"akinsho/toggleterm.nvim",
	version = "*",
	opts = {
		open_mapping = [[<A-t>]],
		highlights = {
			-- highlights which map to a highlight group name and a table of it's values
			-- NOTE: this is only a subset of values, any group placed here will be set for the terminal window split
			NormalFloat = {
				link = "NormalFloat",
			},
			FloatBorder = {
				link = "FloatBorder",
			},
		},
		size = 25,
		direction = "float",
		float_opts = {
			border = "double",
			title_pos = "left",
		},
	},
}
