local comment_pink = "#ff5b8b"
local todo_white = "#f8fafb"
local string_green = "#6db195"
local type_yellow = "#ffb006"
local variable_yellow = "#ffdcbd"
local argument_white = "#fdfde5"
local annotation_blue = "#24a69f"
local line_oran = "#F3A600"
local diff_green = "#2A4E2E"
local diff_yellow = "#755C16"
local diff_bg = "#372A07"
local unused_grey = "#988266"
local generic_green = "#ce8aac"

return {
	"rebelot/kanagawa.nvim",
	opts = {
		transparent = false,
		keywordStyle = { italic = false },
		theme = "dragon",
		background = {
			dark = "dragon",
			white = "lotus",
		},
		overrides = function(colors) -- add/modify highlights
			local theme = colors.theme

			return {
				--vim diff
				DiffAdd = { bg = diff_green, italic = false },
				DiffChange = { bg = diff_bg, italic = false },
				DiffDelete = {},
				DiffText = { bg = diff_yellow, italic = true },

				DiagnosticUnnecessary = { fg = unused_grey, italic = true},
				Comment = { fg = comment_pink, italic = false },
				Todo = { fg = todo_white, bg = comment_pink, italic = false },
				String = { fg = string_green, italic = false },
				Type = { fg = type_yellow },
				Variable = { fg = variable_yellow },
				StaticMethod = { bold = true },
				LambdaVar = { fg = argument_white },
				Generic = { fg = generic_green },
				Annotation = { fg = annotation_blue },

				NormalFloat = { bg = theme.ui.bg_p1 },
				FloatBorder = { fg = line_oran, bg = theme.ui.bg_p1 },
				FloatTitle = { fg = line_oran, bg = theme.ui.bg_p1 },

				-- Save an hlgroup with dark background and dimmed foreground
				-- so that you can use it where your still want darker windows.
				-- E.g.: autocmd TermOpen * setlocal winhighlight=Normal:NormalDark
				NormalDark = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m3 },

				-- Popular plugins that open floats will link to NormalFloat by default;
				-- set their background accordingly if you wish to keep them dark and borderless
				LazyNormal = { bg = theme.ui.bg_p1, fg = theme.ui.fg_dim },
				MasonNormal = { bg = theme.ui.bg_m3, fg = theme.ui.fg_dim },

				TelescopeTitle = { fg = theme.ui.special, bold = true },
				TelescopePromptNormal = { bg = theme.ui.bg_p1 },
				TelescopePromptBorder = { fg = line_oran, bg = theme.ui.bg_p1 },
				TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_p1 },
				TelescopeResultsBorder = { fg = line_oran, bg = theme.ui.bg_p1 },
				TelescopePreviewNormal = { bg = theme.ui.bg_p1 },
				TelescopePreviewBorder = { fg = line_oran, bg = theme.ui.bg_p1 },
				TelescopePreviewLine = { bg = diff_yellow },
			}
		end,
	},
}
