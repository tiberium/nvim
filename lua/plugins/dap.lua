return {
	{
		"mfussenegger/nvim-dap",
		config = function()
			vim.keymap.set("n", "<F5>", "<cmd> DapContinue <CR>")
			vim.keymap.set("n", "<F6>", "<cmd> DapStepOver <CR>")
			vim.keymap.set("n", "<F7>", "<cmd> DapStepInto <CR>")
			vim.keymap.set("n", "<F8>", "<cmd> DapStepOut <CR>")
			vim.keymap.set("n", "<leader>b", "<cmd> DapToggleBreakpoint <CR>", { desc = "DAP: ToggleBreakpoint" })
			vim.keymap.set(
				"n",
				"<leader>B",
				":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition'))  <CR>",
				{ desc = "DAP: ToggleBreakpoint with condition" }
			)
		end,
	},
	{
		"rcarriga/nvim-dap-ui",
		dependencies = { "mfussenegger/nvim-dap", { "nvim-neotest/nvim-nio" } },
		config = function()
			local dap = require("dap")
			local dapui = require("dapui")
			dapui.setup()
			dap.listeners.after.event_initialized["dapui_config"] = function()
				dapui.open()
			end
			dap.listeners.before.event_terminated["dapui_config"] = function()
				dapui.close()
			end
			dap.listeners.before.event_exited["dapui_config"] = function()
				dapui.close()
			end
		end,
	},
}
