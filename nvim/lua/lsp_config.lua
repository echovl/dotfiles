local lsp = require('lspconfig')
local completion = require('completion')

local mapper = function(mode, key, result)
  vim.api.nvim_buf_set_keymap(0, mode, key, "<cmd>lua "..result.."<cr>", {noremap = true, silent = true})
end

local custom_attach = function()
  completion.on_attach()
  -- Custom maps
  mapper('n', '<leader>d', 'vim.lsp.buf.definition()')
  mapper('n', '<leader>rn', 'vim.lsp.buf.rename()')
end

lsp.tsserver.setup{
  on_attach = custom_attach
}

-- auto pairs config
