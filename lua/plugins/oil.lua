return {
	"stevearc/oil.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},

	config = function()
		require("oil").setup({
			columns = { "icon", "size" },
			-- keymaps = {
			--   ["<C-y>"] = false,
			--   ["<M-y>"] = "actions.select_split",
			-- },
			preview = {
				width = 0.8,
			},
			view_options = {
				show_hidden = true,
			},
		})

		vim.keymap.set("n", "-", "<Cmd>Oil<CR>", { desc = "Open parent directory" })
		vim.keymap.set("n", "<space>-", require("oil").toggle_float)
	end,
}
