return {
	"goolord/alpha-nvim",
	dependencies = {
		"echasnovski/mini.icons",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local theme = require("alpha.themes.theta")
		local dashboard = require("alpha.themes.dashboard")

		local buttons = {
			type = "group",
			val = {
				{ type = "text", val = "Quick links", opts = { hl = "SpecialComment", position = "center" } },
				{ type = "padding", val = 1 },
				dashboard.button("e", "  New file", "<cmd>ene<CR>"),
				dashboard.button("SPC s f", "󰈞  Find file"),
				dashboard.button("SPC s g", "󰊄  Live grep"),
				dashboard.button("c", "  Configuration", "<cmd>cd stdpath('config')<CR>"),
				dashboard.button("u", "  Update plugins", "<cmd>Lazy sync<CR>"),
				dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
			},
			position = "center",
		}

		theme.config.layout[6] = buttons

		require("alpha").setup(theme.config)
	end,
}
