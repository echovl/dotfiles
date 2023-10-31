return {
	{
		"Vimjas/vim-python-pep8-indent",
		event = { "BufReadPost", "BufNewFile" },
	},
	-- {
	-- 	"NvChad/nvim-colorizer.lua",
	-- 	lazy = false,
	-- 	opts = {},
	-- },
	{
		"edkolev/tmuxline.vim",
		lazy = false,
	},
	{
		"tpope/vim-sleuth",
		lazy = false,
	},
	{
		"tpope/vim-commentary",
		event = { "BufReadPost", "BufNewFile" },
	},
	{
		"tpope/vim-fugitive",
		lazy = false,
	},
	{
		"github/copilot.vim",
		lazy = false,
	},
}
