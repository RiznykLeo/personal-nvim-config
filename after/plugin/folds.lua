-- In your init.lua or a separate config file
-- UFO folding configuration
vim.o.foldcolumn = "1" -- '0' is also good
vim.o.foldlevel = 99 -- Using ufo provider need a large value
vim.o.foldlevelstart = 99
vim.o.foldenable = true

-- Keymaps for UFO
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zK", function()
	local winid = require("ufo").peekFoldedLinesUnderCursor()
	if not winid then
		vim.lsp.buf.hover()
	end
end)

-- UFO setup with Treesitter as the main provider
require("ufo").setup({
	provider_selector = function(bufnr, filetype, buftype)
		return { "lsp", "indent" }
	end,
})
