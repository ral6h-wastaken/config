-- local theme = {
-- normal = {
-- a = { fg = colors.white, bg = colors.black },
-- b = { fg = colors.white, bg = colors.grey },
-- c = { fg = colors.black, bg = colors.white },
-- z = { fg = colors.white, bg = colors.black },
-- },
-- insert = { a = { fg = colors.black, bg = colors.light_green } },
-- visual = { a = { fg = colors.black, bg = colors.orange } },
-- replace = { a = { fg = colors.black, bg = colors.green } },
--}

local colors = {
	base03 = "#242424",
	base023 = "#353535",
	base02 = "#444444",
	base01 = "#585858",
	base00 = "#666666",
	base0 = "#808080",
	base1 = "#969696",
	base2 = "#a8a8a8",
	base3 = "#d0d0d0",
	yellow = "#cae682",
	orange = "#e5786d",
	red = "#ff4e52",
	magenta = "#f2c68a",
	blue = "#8ac6f2",
	cyan = "#8ac6f2",
	green = "#95e454",
	pink = "#ff80be",
	black = "#000000",
	oran = "#F3A600",
}

local custom_wombat = {
	normal = {
		a = { fg = colors.base02, bg = colors.pink, gui = "bold" },
		b = { fg = colors.base02, bg = colors.oran },
		c = { fg = colors.base2, bg = colors.base02 },
		y = { fg = colors.base02, bg = colors.oran },
		z = { fg = colors.magenta, bg = colors.black },
	},
	insert = {
		a = { fg = colors.base02, bg = colors.green, gui = "bold" },
		z = { fg = colors.magenta, bg = colors.black },
	},
	visual = {
		a = { fg = colors.base02, bg = colors.cyan, gui = "bold" },
		z = { fg = colors.magenta, bg = colors.black },
	},
	replace = {
		a = { fg = colors.base023, bg = colors.red, gui = "bold" },
		z = { fg = colors.magenta, bg = colors.black },
	},
	command = {
		a = { fg = colors.base023, bg = colors.red, gui = "bold" },
		z = { fg = colors.magenta, bg = colors.black },
	},
	inactive = {
		a = { fg = colors.base1, bg = colors.base02, gui = "bold" },
		b = { fg = colors.magenta, bg = colors.black },
		c = { fg = colors.base1, bg = colors.base023 },
	},
}

local function get_relative_path()
	local current_file = require("neovim-project.utils.path").dir_pretty -- needs the project plugin
	local relative_path = vim.fn.fnamemodify(current_file, ":t") -- Get the relative path
	return "🗁 " .. relative_path
end

return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "mfussenegger/nvim-lint", "stevearc/conform.nvim" },
	opts = {
		options = {
			theme = custom_wombat,
			section_separators = { left = "", right = "" },
			-- section_separators = { left = "e29688", right = "┃" },
			component_separators = "",
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { get_relative_path },
			lualine_c = { "branch", "diff", "diagnostics" },
			lualine_x = { "searchcount", "progress" },
			lualine_y = { "fileformat", "encoding", "location" },
			lualine_z = { "lsp_status" },
		},
	},
}
