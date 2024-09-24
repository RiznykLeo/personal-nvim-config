function Colors(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)
end

function Dark(color)
	Colors(color)

	vim.opt.background = "dark"

	require("lualine").setup({
		options = {
			theme = "codedark",
		},
	})
end

function Light(color)
	Colors(color)
	vim.opt.background = "light"

	require("lualine").setup({
		options = {
			theme = "iceberg_light",
		},
	})
end

Colors()
