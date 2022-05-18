return function()
    require("nvim-treesitter.configs").setup {
      ensure_installed = "all",
      sync_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        custom_captures = {
            ["keyword.operator"] = "Keyword",
            ["operator"] = "Keyword",
            ["include"] = "Keyword",
            ["repeat"] = "Keyword"
        }
      },
      indent = { enable = false },
    }
end
