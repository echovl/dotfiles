local util = require("vim.lsp.util")
local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

function formatting_sync(client)
  local bufnr = vim.api.nvim_get_current_buf()
  local params = util.make_formatting_params({})
  local result, err = client.request_sync("textDocument/formatting", params, 2000, bufnr)
  if result and result.result then
    util.apply_text_edits(result.result, bufnr, client.offset_encoding)
  elseif err then
    vim.notify("vim.lsp.buf.formatting_sync: " .. err, vim.log.levels.WARN)
  end
end

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.prettier,
    },
    -- you can reuse a shared lspconfig on_attach callback here
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    -- on 0.8, you should use vim.lsp.buf.format({ bufnr = bufnr }) instead
                    formatting_sync(client)
                end,
            })
        end
    end,
})
