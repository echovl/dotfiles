local lsp_signature = require("lsp_signature")

lsp_signature.setup {
    bind = true,
    doc_lines = 5,
    floating_window = true,
    hint_enable = false,
    handler_opts = {border = "single"},
    extra_trigger_chars = {"(", ","},
}
