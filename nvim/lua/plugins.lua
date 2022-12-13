vim.cmd([[packadd packer.nvim]])

local function conf(name)
	return require(name)
end

return require("packer").startup(function()
	use("wbthomason/packer.nvim")
	use("edkolev/tmuxline.vim")
	use("tomlion/vim-solidity")
	use("rust-lang/rust.vim")
	use("neovimhaskell/haskell-vim")
	use("tpope/vim-commentary")
	use("tpope/vim-fugitive")

    use ({
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'} }
    })

    use { 'sindrets/diffview.nvim', requires = 'nvim-lua/plenary.nvim' }

    -- tree
	use { 
        'kyazdani42/nvim-tree.lua', 
        requires = 'kyazdani42/nvim-web-devicons',
        config = conf("tree"),
    }

    -- bufferline
	-- use {
        -- 'akinsho/bufferline.nvim', tag = "v2.*", 
        -- requires = 'kyazdani42/nvim-web-devicons',
        -- config = conf("bufferlineconf"),
    -- }

    -- lualine

    use ({
        'nvim-lualine/lualine.nvim',
        config = conf("lualineconf"),
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    })

	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
		config = conf("treesitter"),
	})

    -- devicons	
	use ('kyazdani42/nvim-web-devicons')

	use({
		"williamboman/nvim-lsp-installer",
		{
			"neovim/nvim-lspconfig",
			config = conf("lsp"),
		},
	})

    use({ "Vimjas/vim-python-pep8-indent" })

	use({ "windwp/nvim-autopairs", config = conf("autopairs") })

	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
		config = conf("null"),
	})

	use({ "ray-x/lsp_signature.nvim", config = conf("lsp-signature") })

	use({
		"hrsh7th/nvim-cmp",
		config = conf("nvim-cmp"),
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-nvim-lua",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-emoji",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-cmdline",
			"hrsh7th/cmp-vsnip",
			"hrsh7th/vim-vsnip",
		},
	})

    -- themes
	use("dracula/vim")
    use { "ellisonleao/gruvbox.nvim" }
    use 'navarasu/onedark.nvim'
end)
