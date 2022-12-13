return function()
	local opts = { noremap = true, silent = true }

	-- vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
	--vim.api.nvim_set_keymap('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>', opts)
	--vim.api.nvim_set_keymap('n', '<space>q', '<cmd>lua vim.diagnostic.setloclist()<CR>', opts)

	-- Use an on_attach function to only map the following keys
	-- after the language server attaches to the current buffer
	local on_attach = function(client, bufnr)
		-- Mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>d", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>h", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rf", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
		vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>ft", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
	end

	local util = require("lspconfig/util")
	local lastRootPath = nil
	local gopath = os.getenv("GOPATH")
	if gopath == nil then
		gopath = ""
	end
	local gopathmod = gopath .. "/pkg/mod"

	local capabilities = require("cmp_nvim_lsp").default_capabilities(vim.lsp.protocol.make_client_capabilities())
	local lsp_install = require("nvim-lsp-installer")

	lsp_install.setup({
		automatic_installation = true,
		ui = {
			icons = {
				server_installed = "✓",
				server_pending = "➜",
				server_uninstalled = "✗",
			},
		},
	})

	-- Fixes go to def inside some modules, see: https://github.com/neovim/nvim-lspconfig/issues/804
	require("lspconfig").gopls.setup({
		on_attach = on_attach,
		flags = {
			debounce_text_changes = 150,
		},
		capabilities = capabilities,
		root_dir = function(fname)
			local fullpath = vim.fn.expand(fname, ":p")
			if string.find(fullpath, gopathmod) and lastRootPath ~= nil then
				return lastRootPath
			end
			lastRootPath = util.root_pattern("go.mod", ".git")(fname)
			return lastRootPath
		end,
	})

	require("lspconfig").sumneko_lua.setup({
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {
				runtime = {
					-- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
					version = "LuaJIT",
				},
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { "vim" },
				},
				workspace = {
					-- Make the server aware of Neovim runtime files
					library = vim.api.nvim_get_runtime_file("", true),
				},
				-- Do not send telemetry data containing a randomized but unique identifier
				telemetry = {
					enable = false,
				},
			},
		},
	})

	-- Use a loop to conveniently call 'setup' on multiple servers and
	-- map buffer local keybindings when the language server attaches
	local servers = { "tsserver", "pyright" , "solc", "jsonls"}
	for _, lsp in pairs(servers) do
		require("lspconfig")[lsp].setup({
			on_attach = on_attach,
			capabilities = capabilities,
			flags = {
				-- This will be the default in neovim 0.7+
				debounce_text_changes = 150,
			},
		})
	end
end
