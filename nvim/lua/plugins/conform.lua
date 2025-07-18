return { -- Autoformat
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, --write on save
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_format = "fallback" })
			end,
			mode = "",
			desc = "[F]ormat buffer",
		},
	},
	opts = {
		notify_on_error = true,
		format_on_save = false,
		formatters_by_ft = {
			json = { "fixjson" },
			lua = { "stylua" },
			xml = { "xmlformatter" },
			-- java = { "google-java-format" },
			java = { "my_java" }, --sudo apt install astyle neede
			-- Conform can also run multiple formatters sequentially
			-- python = { "isort", "black" },
			--
			-- You can use 'stop_after_first' to run the first available formatter from the list
			-- javascript = { "prettierd", "prettier", stop_after_first = true },
		},
		formatters = {
			my_java = {
				-- This can be a string or a function that returns a string.
				-- When defining a new formatter, this is the only field that is required
				command = "astyle",
				args = {
					"--mode=java",
					"--style=java",
					"--indent=spaces=4",
					"--convert-tabs",
					"--pad-oper",
					"--align-pointer=type",
					"--align-reference=type",
					"--break-after-logical",
					"--max-code-length=120",
					"--lineend=linux",
				},
			},
		},
	},
}
