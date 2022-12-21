local lsp = require("lsp-zero")

lsp.preset("recommended")

lsp.ensure_installed({
    "gopls",
    "tsserver",
    "pyright",
    "rust_analyzer",
    "sumneko_lua",
    "jsonls",
})

-- Fix Undefined global 'vim'
lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

lsp.setup_nvim_cmp({
    sources = {
        { name = "nvim_lsp" },
        { name = "nvim_lua" },
        { name = "path" },
    }
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
    local opts = {buffer = bufnr, remap = false}

    vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

    vim.keymap.set("n", "<leader>d", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "<leader>h", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>rf", vim.lsp.buf.references, opts)
end)

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.gofmt,
        null_ls.builtins.formatting.goimports,
        null_ls.builtins.formatting.prettierd,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.autopep8,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.formatting.sql_formatter.with({
            extra_args = { "-l", "postgresql" },
        }),
        -- null_ls.builtins.formatting.prismaFmt
    }
})

local lsp_signature = require("lsp_signature")

lsp_signature.setup({
    bind = true,
    doc_lines = 5,
    floating_window = true,
    hint_enable = false,
    handler_opts = { border = "single" },
    extra_trigger_chars = { "(", "," },
})
