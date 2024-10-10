return {
	"neanias/everforest-nvim",
	priority = 1000,
	config = function()
		vim.cmd.colorscheme("everforest")
		vim.cmd([[
      hi Normal guibg=NONE ctermbg=NONE
      hi NormalNC guibg=NONE ctermbg=NONE
      hi EndOfBuffer guibg=NONE ctermbg=NONE
    ]])
		-- override defaults
		-- vim.api.nvim_set_hl(0, "@number", { fg = "#e933e3" })
	end,
}
