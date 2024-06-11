local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- install plugins
require("lazy").setup({
	spec = {
		require("plugins.cmp"),
		require("plugins.devicons"),
		require("plugins.treesitter"),
		require("plugins.luasnip"),
		require("plugins.diffview"),
		require("plugins.lsp"),
		require("plugins.mason"),
		require("plugins.telescope"),
		require("plugins.nvim-tree"),
		require("plugins.theme"),
		require("plugins.markdown-preview"),
		require("plugins.lualine"),
		require("plugins.autopairs"),
		require("plugins.gitsigns"),
		require("plugins.neocodeium"),
		require("plugins.conform"),
	},
	ui = {
		border = "rounded",
	},
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"matchparen",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
})
