local map = function(mode, key, cmd, opts)
	vim.api.nvim_set_keymap(mode, key, cmd, opts or { noremap = true, silent = true })
end

vim.g.mapleader = " "

map("n", "<leader>gsv", ":so " .. vim.env.MYVIMRC .. "<CR>")

map("n", "<leader>tr", ":NERDTreeToggle<CR>")
map("n", "<C-p>", ":GFiles<CR>")
