-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/home/echo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/echo/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/echo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/echo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/echo/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["cmp-buffer"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  fzf = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/fzf",
    url = "https://github.com/junegunn/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/fzf.vim",
    url = "https://github.com/junegunn/fzf.vim"
  },
  ["haskell-vim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/haskell-vim",
    url = "https://github.com/neovimhaskell/haskell-vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/lightline.vim",
    url = "https://github.com/itchyny/lightline.vim"
  },
  ["lsp_signature.nvim"] = {
    config = { "\27LJ\2\n¼\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3B\1\2\1K\0\1\0\24extra_trigger_chars\1\3\0\0\6(\6,\17handler_opts\1\0\1\vborder\vsingle\1\0\4\14doc_lines\3\5\tbind\2\16hint_enable\1\20floating_window\2\nsetup\18lsp_signature\frequire\0" },
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/lsp_signature.nvim",
    url = "https://github.com/ray-x/lsp_signature.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["null-ls.nvim"] = {
    config = { "\27LJ\2\nÛ\2\0\1\n\1\14\0'6\1\0\0009\1\1\0019\1\2\1B\1\1\2-\2\0\0009\2\3\0024\4\0\0B\2\2\0029\3\4\0'\5\5\0\18\6\2\0)\aÐ\a\18\b\1\0B\3\5\3\15\0\3\0X\5\n€9\5\6\3\15\0\5\0X\6\a€-\5\0\0009\5\a\0059\a\6\3\18\b\1\0009\t\b\0B\5\4\1X\5\f€\15\0\4\0X\5\n€6\5\0\0009\5\t\5'\a\n\0\18\b\4\0&\a\b\a6\b\0\0009\b\v\b9\b\f\b9\b\r\bB\5\3\1K\0\1\0\0À\tWARN\vlevels\blog\"vim.lsp.buf.formatting_sync: \vnotify\20offset_encoding\21apply_text_edits\vresult\28textDocument/formatting\17request_sync\27make_formatting_params\25nvim_get_current_buf\bapi\bvim)\0\0\3\1\1\0\0046\0\0\0-\2\0\0B\0\2\1K\0\1\0\0À\20formatting_syncò\1\1\2\a\1\r\0\0269\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\19€6\2\2\0009\2\3\0029\2\4\0025\4\5\0-\5\0\0=\5\6\4=\1\a\4B\2\2\0016\2\2\0009\2\3\0029\2\b\2'\4\t\0005\5\n\0-\6\0\0=\6\6\5=\1\a\0053\6\v\0=\6\f\5B\2\3\0012\0\0€K\0\1\0\2À\rcallback\0\1\0\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\1\0\0\24nvim_clear_autocmds\bapi\bvim\28textDocument/formatting\20supports_methodÍ\2\1\0\b\0\20\0'6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0004\5\0\0B\2\3\0023\3\a\0007\3\b\0009\3\t\0015\5\16\0004\6\5\0009\a\n\0019\a\v\a9\a\f\a>\a\1\0069\a\n\0019\a\v\a9\a\r\a>\a\2\0069\a\n\0019\a\v\a9\a\14\a>\a\3\0069\a\n\0019\a\v\a9\a\15\a>\a\4\6=\6\17\0053\6\18\0=\6\19\5B\3\2\0012\0\0€K\0\1\0\14on_attach\0\fsources\1\0\0\rautopep8\rprettier\14goimports\ngofmt\15formatting\rbuiltins\nsetup\20formatting_sync\0\18LspFormatting\24nvim_create_augroup\bapi\bvim\fnull-ls\17vim.lsp.util\frequire\0" },
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/null-ls.nvim",
    url = "https://github.com/jose-elias-alvarez/null-ls.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-base16"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nvim-base16",
    url = "https://github.com/RRethy/nvim-base16"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimª\5\1\0\v\0&\0Y6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0044\5\0\0=\5\t\0049\5\n\0009\5\v\0059\5\f\0055\a\14\0009\b\n\0009\b\r\b)\nüÿB\b\2\2=\b\15\a9\b\n\0009\b\r\b)\n\4\0B\b\2\2=\b\16\a9\b\n\0009\b\17\bB\b\1\2=\b\18\a9\b\n\0009\b\19\bB\b\1\2=\b\20\a9\b\n\0009\b\21\b5\n\22\0B\b\2\2=\b\23\aB\5\2\2=\5\n\0049\5\24\0009\5\25\0054\a\5\0005\b\26\0>\b\1\a5\b\27\0>\b\2\a5\b\28\0>\b\3\a5\b\29\0>\b\4\aB\5\2\2=\5\25\4B\2\2\0019\2\3\0009\2\30\2'\4\31\0005\5 \0009\6\n\0009\6\v\0069\6\30\6B\6\1\2=\6\n\0055\6!\0=\6\25\5B\2\3\0019\2\3\0009\2\30\2'\4\"\0005\5#\0009\6\n\0009\6\v\0069\6\30\6B\6\1\2=\6\n\0059\6\24\0009\6\25\0064\b\3\0005\t$\0>\t\1\b5\t%\0>\t\2\bB\6\2\2=\6\25\5B\2\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\"nvim-autopairs.completion.cmp\bcmp\frequire\0" },
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nŸ\4\0\2\t\1\16\00076\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\1K\0\1\0\0À*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>ft*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>rf+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn%<cmd>lua vim.lsp.buf.hover()<CR>\14<leader>h*<cmd>lua vim.lsp.buf.definition()<CR>\14<leader>d\6n\24nvim_buf_set_keymap\bapi\bvim³\1\0\1\6\3\t\0\0286\1\0\0009\1\1\0019\1\2\1\18\3\0\0'\4\3\0B\1\3\0026\2\4\0009\2\5\2\18\4\1\0-\5\0\0B\2\3\2\15\0\2\0X\3\5€-\2\1\0\n\2\0\0X\2\2€-\2\1\0L\2\2\0-\2\2\0009\2\6\2'\4\a\0'\5\b\0B\2\3\2\18\4\0\0B\2\2\2.\1\2\0-\2\1\0L\2\2\0\5À\3€\2À\t.git\vgo.mod\17root_pattern\tfind\vstring\a:p\vexpand\afn\bvim³\6\1\0\18\0(\0M5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0013\1\a\0006\2\b\0'\4\t\0B\2\2\2+\3\0\0006\4\n\0009\4\v\4'\6\f\0B\4\2\2\v\4\0\0X\5\1€'\4\r\0\18\5\4\0'\6\14\0&\5\6\0056\6\b\0'\b\15\0B\6\2\0029\6\16\0066\b\1\0009\b\17\b9\b\18\b9\b\19\bB\b\1\0A\6\0\0026\a\b\0'\t\20\0B\a\2\0029\b\21\a5\n\22\0005\v\24\0005\f\23\0=\f\25\v=\v\26\nB\b\2\0016\b\b\0'\n\27\0B\b\2\0029\b\28\b9\b\21\b5\n\29\0=\1\30\n5\v\31\0=\v \n=\6!\n3\v\"\0=\v#\nB\b\2\0015\b$\0006\t%\0\18\v\b\0B\t\2\4H\f\v€6\14\b\0'\16\27\0B\14\2\0028\14\r\0149\14\21\0145\16&\0=\1\30\16=\6!\0165\17'\0=\17 \16B\14\2\1F\f\3\3R\fó2\0\0€K\0\1\0\1\0\1\26debounce_text_changes\3–\1\1\0\0\npairs\1\4\0\0\rtsserver\16sumneko_lua\fpyright\rroot_dir\0\17capabilities\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\1\0\0\ngopls\14lspconfig\aui\nicons\1\0\0\1\0\3\19server_pending\bâžœ\21server_installed\bâœ“\23server_uninstalled\bâœ—\1\0\1\27automatic_installation\2\nsetup\23nvim-lsp-installer\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\r/pkg/mod\5\vGOPATH\vgetenv\aos\19lspconfig/util\frequire\0,<cmd>lua vim.diagnostic.goto_next()<CR>\14<leader>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0" },
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\n­\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\20custom_captures\1\0\4\finclude\fKeyword\21keyword.operator\fKeyword\vrepeat\fKeyword\roperator\fKeyword\1\0\2\venable\2&additional_vim_regex_highlighting\1\1\0\2\17sync_install\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["rust.vim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/rust.vim",
    url = "https://github.com/rust-lang/rust.vim"
  },
  ["tmuxline.vim"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/tmuxline.vim",
    url = "https://github.com/edkolev/tmuxline.vim"
  },
  vim = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/vim",
    url = "https://github.com/dracula/vim"
  },
  ["vim-solidity"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/vim-solidity",
    url = "https://github.com/tomlion/vim-solidity"
  },
  ["vim-tmux-navigator"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/vim-tmux-navigator",
    url = "https://github.com/christoomey/vim-tmux-navigator"
  },
  ["vim-vsnip"] = {
    loaded = true,
    path = "/home/echo/.local/share/nvim/site/pack/packer/start/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\n;\0\1\4\0\4\0\0066\1\0\0009\1\1\0019\1\2\0019\3\3\0B\1\2\1K\0\1\0\tbody\20vsnip#anonymous\afn\bvimª\5\1\0\v\0&\0Y6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\2\3\0005\4\a\0005\5\5\0003\6\4\0=\6\6\5=\5\b\0044\5\0\0=\5\t\0049\5\n\0009\5\v\0059\5\f\0055\a\14\0009\b\n\0009\b\r\b)\nüÿB\b\2\2=\b\15\a9\b\n\0009\b\r\b)\n\4\0B\b\2\2=\b\16\a9\b\n\0009\b\17\bB\b\1\2=\b\18\a9\b\n\0009\b\19\bB\b\1\2=\b\20\a9\b\n\0009\b\21\b5\n\22\0B\b\2\2=\b\23\aB\5\2\2=\5\n\0049\5\24\0009\5\25\0054\a\5\0005\b\26\0>\b\1\a5\b\27\0>\b\2\a5\b\28\0>\b\3\a5\b\29\0>\b\4\aB\5\2\2=\5\25\4B\2\2\0019\2\3\0009\2\30\2'\4\31\0005\5 \0009\6\n\0009\6\v\0069\6\30\6B\6\1\2=\6\n\0055\6!\0=\6\25\5B\2\3\0019\2\3\0009\2\30\2'\4\"\0005\5#\0009\6\n\0009\6\v\0069\6\30\6B\6\1\2=\6\n\0059\6\24\0009\6\25\0064\b\3\0005\t$\0>\t\1\b5\t%\0>\t\2\bB\6\2\2=\6\25\5B\2\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\1\0\1\tname\vbuffer\1\0\0\6/\fcmdline\1\0\1\tname\tpath\1\0\1\tname\nvsnip\1\0\1\tname\rnvim_lsp\1\0\1\tname\rnvim_lua\fsources\vconfig\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\1\0\0\16scroll_docs\vinsert\vpreset\fmapping\vwindow\fsnippet\1\0\0\vexpand\1\0\0\0\nsetup\"nvim-autopairs.completion.cmp\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nŸ\4\0\2\t\1\16\00076\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\4\0'\a\5\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\6\0'\a\a\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\b\0'\a\t\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\n\0'\a\v\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\f\0'\a\r\0-\b\0\0B\2\6\0016\2\0\0009\2\1\0029\2\2\2\18\4\1\0'\5\3\0'\6\14\0'\a\15\0-\b\0\0B\2\6\1K\0\1\0\0À*<cmd>lua vim.lsp.buf.formatting()<CR>\15<leader>ft*<cmd>lua vim.lsp.buf.references()<CR>\15<leader>rf+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>ca&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>rn%<cmd>lua vim.lsp.buf.hover()<CR>\14<leader>h*<cmd>lua vim.lsp.buf.definition()<CR>\14<leader>d\6n\24nvim_buf_set_keymap\bapi\bvim³\1\0\1\6\3\t\0\0286\1\0\0009\1\1\0019\1\2\1\18\3\0\0'\4\3\0B\1\3\0026\2\4\0009\2\5\2\18\4\1\0-\5\0\0B\2\3\2\15\0\2\0X\3\5€-\2\1\0\n\2\0\0X\2\2€-\2\1\0L\2\2\0-\2\2\0009\2\6\2'\4\a\0'\5\b\0B\2\3\2\18\4\0\0B\2\2\2.\1\2\0-\2\1\0L\2\2\0\5À\3€\2À\t.git\vgo.mod\17root_pattern\tfind\vstring\a:p\vexpand\afn\bvim³\6\1\0\18\0(\0M5\0\0\0006\1\1\0009\1\2\0019\1\3\1'\3\4\0'\4\5\0'\5\6\0\18\6\0\0B\1\5\0013\1\a\0006\2\b\0'\4\t\0B\2\2\2+\3\0\0006\4\n\0009\4\v\4'\6\f\0B\4\2\2\v\4\0\0X\5\1€'\4\r\0\18\5\4\0'\6\14\0&\5\6\0056\6\b\0'\b\15\0B\6\2\0029\6\16\0066\b\1\0009\b\17\b9\b\18\b9\b\19\bB\b\1\0A\6\0\0026\a\b\0'\t\20\0B\a\2\0029\b\21\a5\n\22\0005\v\24\0005\f\23\0=\f\25\v=\v\26\nB\b\2\0016\b\b\0'\n\27\0B\b\2\0029\b\28\b9\b\21\b5\n\29\0=\1\30\n5\v\31\0=\v \n=\6!\n3\v\"\0=\v#\nB\b\2\0015\b$\0006\t%\0\18\v\b\0B\t\2\4H\f\v€6\14\b\0'\16\27\0B\14\2\0028\14\r\0149\14\21\0145\16&\0=\1\30\16=\6!\0165\17'\0=\17 \16B\14\2\1F\f\3\3R\fó2\0\0€K\0\1\0\1\0\1\26debounce_text_changes\3–\1\1\0\0\npairs\1\4\0\0\rtsserver\16sumneko_lua\fpyright\rroot_dir\0\17capabilities\nflags\1\0\1\26debounce_text_changes\3–\1\14on_attach\1\0\0\ngopls\14lspconfig\aui\nicons\1\0\0\1\0\3\19server_pending\bâžœ\21server_installed\bâœ“\23server_uninstalled\bâœ—\1\0\1\27automatic_installation\2\nsetup\23nvim-lsp-installer\29make_client_capabilities\rprotocol\blsp\24update_capabilities\17cmp_nvim_lsp\r/pkg/mod\5\vGOPATH\vgetenv\aos\19lspconfig/util\frequire\0,<cmd>lua vim.diagnostic.goto_next()<CR>\14<leader>e\6n\20nvim_set_keymap\bapi\bvim\1\0\2\vsilent\2\fnoremap\2\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: null-ls.nvim
time([[Config for null-ls.nvim]], true)
try_loadstring("\27LJ\2\nÛ\2\0\1\n\1\14\0'6\1\0\0009\1\1\0019\1\2\1B\1\1\2-\2\0\0009\2\3\0024\4\0\0B\2\2\0029\3\4\0'\5\5\0\18\6\2\0)\aÐ\a\18\b\1\0B\3\5\3\15\0\3\0X\5\n€9\5\6\3\15\0\5\0X\6\a€-\5\0\0009\5\a\0059\a\6\3\18\b\1\0009\t\b\0B\5\4\1X\5\f€\15\0\4\0X\5\n€6\5\0\0009\5\t\5'\a\n\0\18\b\4\0&\a\b\a6\b\0\0009\b\v\b9\b\f\b9\b\r\bB\5\3\1K\0\1\0\0À\tWARN\vlevels\blog\"vim.lsp.buf.formatting_sync: \vnotify\20offset_encoding\21apply_text_edits\vresult\28textDocument/formatting\17request_sync\27make_formatting_params\25nvim_get_current_buf\bapi\bvim)\0\0\3\1\1\0\0046\0\0\0-\2\0\0B\0\2\1K\0\1\0\0À\20formatting_syncò\1\1\2\a\1\r\0\0269\2\0\0'\4\1\0B\2\2\2\15\0\2\0X\3\19€6\2\2\0009\2\3\0029\2\4\0025\4\5\0-\5\0\0=\5\6\4=\1\a\4B\2\2\0016\2\2\0009\2\3\0029\2\b\2'\4\t\0005\5\n\0-\6\0\0=\6\6\5=\1\a\0053\6\v\0=\6\f\5B\2\3\0012\0\0€K\0\1\0\2À\rcallback\0\1\0\0\16BufWritePre\24nvim_create_autocmd\vbuffer\ngroup\1\0\0\24nvim_clear_autocmds\bapi\bvim\28textDocument/formatting\20supports_methodÍ\2\1\0\b\0\20\0'6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0026\2\3\0009\2\4\0029\2\5\2'\4\6\0004\5\0\0B\2\3\0023\3\a\0007\3\b\0009\3\t\0015\5\16\0004\6\5\0009\a\n\0019\a\v\a9\a\f\a>\a\1\0069\a\n\0019\a\v\a9\a\r\a>\a\2\0069\a\n\0019\a\v\a9\a\14\a>\a\3\0069\a\n\0019\a\v\a9\a\15\a>\a\4\6=\6\17\0053\6\18\0=\6\19\5B\3\2\0012\0\0€K\0\1\0\14on_attach\0\fsources\1\0\0\rautopep8\rprettier\14goimports\ngofmt\15formatting\rbuiltins\nsetup\20formatting_sync\0\18LspFormatting\24nvim_create_augroup\bapi\bvim\fnull-ls\17vim.lsp.util\frequire\0", "config", "null-ls.nvim")
time([[Config for null-ls.nvim]], false)
-- Config for: lsp_signature.nvim
time([[Config for lsp_signature.nvim]], true)
try_loadstring("\27LJ\2\n¼\1\0\0\5\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\3\0005\4\4\0=\4\5\0035\4\6\0=\4\a\3B\1\2\1K\0\1\0\24extra_trigger_chars\1\3\0\0\6(\6,\17handler_opts\1\0\1\vborder\vsingle\1\0\4\14doc_lines\3\5\tbind\2\16hint_enable\1\20floating_window\2\nsetup\18lsp_signature\frequire\0", "config", "lsp_signature.nvim")
time([[Config for lsp_signature.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\n­\2\0\0\5\0\n\0\r6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\3=\3\a\0025\3\b\0=\3\t\2B\0\2\1K\0\1\0\vindent\1\0\1\venable\1\14highlight\20custom_captures\1\0\4\finclude\fKeyword\21keyword.operator\fKeyword\vrepeat\fKeyword\roperator\fKeyword\1\0\2\venable\2&additional_vim_regex_highlighting\1\1\0\2\17sync_install\1\21ensure_installed\ball\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
