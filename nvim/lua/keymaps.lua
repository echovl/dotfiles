local map = function(mode, key, cmd, opts)
	vim.api.nvim_set_keymap(mode, key, cmd, opts or { noremap = true, silent = true })
end

vim.g.mapleader = " "

map("n", "<leader>gsv", ":so " .. vim.env.MYVIMRC .. "<CR>")
map("n", "<leader>tr", ":NERDTreeToggle<CR>")
map("n", "<C-p>",  '<cmd>lua require("telescope.builtin").git_files()<CR>')
map("n", "<leader>pf",  '<cmd>lua require("telescope.builtin").find_files()<CR>')
map("n", "<leader>ps",  '<cmd>lua require("telescope.builtin").live_grep()<CR>')
map("n", "<leader>j",  ':cnext<CR>')
map("n", "<leader>k",  ':cprev<CR>')
