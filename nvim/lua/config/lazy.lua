local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "
require("config.mappings")

require("lazy").setup({
	spec = {
		-- import your plugins
		{ import = "plugins" },
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	-- checker = { enabled = true },
})

vim.cmd("colorscheme kanagawa")
vim.api.nvim_set_hl(0, "@lsp.type.modifier.java", { link = "Keyword" })
vim.api.nvim_set_hl(0, "@lsp.type.namespace.java", { link = "Variable" })
vim.api.nvim_set_hl(0, "@lsp.type.variable.java", { link = "Variable" })
vim.api.nvim_set_hl(0, "@lsp.typemod.property.readonly.java", { link = "Variable" })
-- vim.api.nvim_set_hl(0, "@lsp.typemod.class.readonly.java", { link = "Type" })
vim.api.nvim_set_hl(0, "@lsp.typemod.method.static.java", { link = "StaticMethod" })
vim.api.nvim_set_hl(0, "@lsp.typemod.parameter.declaration.java", { link = "LambdaVar" })
vim.api.nvim_set_hl(0, "@lsp.typemod.interface.typeArgument.java", { link = "Generic" })
vim.api.nvim_set_hl(0, "@lsp.typemod.class.typeArgument.java", { link = "Generic" })
vim.api.nvim_set_hl(0, "@lsp.typemod.record.typeArgument.java", { link = "Generic" })
vim.api.nvim_set_hl(0, "@lsp.typemod.enum.typeArgument.java", { link = "Generic" })
vim.api.nvim_set_hl(0, "@lsp.type.annotation.java", { link = "Annotation" })

-- Hover keymaps
vim.keymap.set("n", "K", require("hover").hover, { desc = "hover.nvim" })
vim.keymap.set("n", "gK", require("hover").hover_select, { desc = "hover.nvim (select)" })
vim.keymap.set("n", "<C-p>", function()
	require("hover").hover_switch("previous")
end, { desc = "hover.nvim (previous source)" })
vim.keymap.set("n", "<C-n>", function()
	require("hover").hover_switch("next")
end, { desc = "hover.nvim (next source)" })
