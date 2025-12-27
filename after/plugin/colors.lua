function ColorSetup(colors)
	color = color or 'kanagawa'
	vim.cmd.colorscheme(color)

	--Set backgroung to transparent
	vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
	vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
end

ColorSetup()
