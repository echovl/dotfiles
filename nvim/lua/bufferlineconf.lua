return function ()
    require('bufferline').setup {
        options = {
            offsets = { { filetype = "NvimTree", text = "Files", padding = 1 } },
        }
    }
end
