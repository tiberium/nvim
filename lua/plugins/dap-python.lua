return {
	"mfussenegger/nvim-dap-python",
	ft = "python",
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
		require("dap-python").setup(path)

		vim.keymap.set("n", "<leader>dpr", function()
			require("dap-python").test_method()
		end, { desc = "DAP: Debug Python Run" })
	end,
}
