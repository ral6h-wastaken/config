return { -- Highlight, edit, and navigate code
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	build = ":TSUpdate",
	main = "nvim-treesitter.configs", -- Sets main module to use for opts
	-- [[ Configure Treesitter ]] See `:help nvim-treesitter`
	opts = {
		ensure_installed = {
			"bash",
			"html",
			"templ",
			"lua",
			"luadoc",
			"markdown",
			"markdown_inline",
			"vim",
			"vimdoc",
			"java",
			"go",
			"rust",
		},
		-- Autoinstall languages that are not installed
		auto_install = false,
		sync_install = false,
		highlight = { enable = true },
		indent = { enable = true },
	},
	-- There are additional nvim-treesitter modules that you can use to interact
	-- with nvim-treesitter. You should go explore a few and see what interests you:
	--
	--    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
	--    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
	--    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
}
