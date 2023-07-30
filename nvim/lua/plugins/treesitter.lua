return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		cmd = { "TSUpdateSync" },
		event = { "BufReadPost", "BufNewFile" },
		opts = {
			ensure_installed = "all",
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				additional_vim_regex_highlighting = false,
			},
			indent = {
				enable = false,
			},
		},
	},
}