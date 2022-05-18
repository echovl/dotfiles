vim.cmd [[packadd packer.nvim]]

local function conf(name)
  return require(name)
end

return require("packer").startup(function()
  use "wbthomason/packer.nvim"
  use "edkolev/tmuxline.vim"
  use "christoomey/vim-tmux-navigator"
  use "tomlion/vim-solidity"
  use "rust-lang/rust.vim"
  use {"junegunn/fzf", run = function() vim.fn["fzf#install"]() end }
  use "junegunn/fzf.vim"
  use "preservim/nerdtree"
  use "RRethy/nvim-base16"
  use "neovimhaskell/haskell-vim"
  use "itchyny/lightline.vim"

  use { 
      "nvim-treesitter/nvim-treesitter", 
      run = ":TSUpdate", 
      config = conf "treesitter" 
  }

  use {
      "williamboman/nvim-lsp-installer", 
      {
          "neovim/nvim-lspconfig",
          config = conf "lsp",
      }
  }

  use { "windwp/nvim-autopairs", config = conf "autopairs" }

  use { 
      "jose-elias-alvarez/null-ls.nvim" , 
      requires = { "nvim-lua/plenary.nvim" } ,
      config = conf "null",
  }

  use { "ray-x/lsp_signature.nvim", config = conf "lsp-signature" }

  use { 
    "hrsh7th/nvim-cmp", 
    config = conf "nvim-cmp",
    requires = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-nvim-lua",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-path",
      "hrsh7th/cmp-cmdline",
      "hrsh7th/cmp-vsnip",
      "hrsh7th/vim-vsnip",
    }
  }

  use "dracula/vim"
end)
