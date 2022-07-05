return function()
	require("nvim-treesitter.configs").setup({
		ensure_installed = "all",
		sync_install = false,
		highlight = {
			enable = true,
		},
		incremental_selection = {
			enable = false,
		},
	})
end
