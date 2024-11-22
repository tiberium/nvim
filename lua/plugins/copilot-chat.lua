return {
	"CopilotC-Nvim/CopilotChat.nvim",
	branch = "canary",
	dependencies = {
		{ "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
		{ "nvim-lua/plenary.nvim" }, -- for curl, log wrapper
	},
	build = "make tiktoken", -- Only on MacOS or Linux
	config = function()
		require("CopilotChat").setup({
			vim.keymap.set("n", "mc", "<Cmd>CopilotChatToggle<CR>"),
			vim.keymap.set("n", "mx", "<Cmd>CopilotChatStop<CR>"),
			vim.keymap.set("n", "mR", "<Cmd>CopilotChatReset<CR>"),
			vim.keymap.set("v", "me", "<Cmd>CopilotChatExplain<CR>"),
			vim.keymap.set("v", "mr", "<Cmd>CopilotChatReview<CR>"),
			vim.keymap.set("v", "mo", "<Cmd>CopilotChatOptimize<CR>"),
			vim.keymap.set("v", "md", "<Cmd>CopilotChatDocs<CR>"),
			vim.keymap.set("v", "mt", "<Cmd>CopilotChatTest<CR>"),
			vim.keymap.set("n", "<leader>mc", function()
				local actions = require("CopilotChat.actions")
				require("CopilotChat.integrations.telescope").pick(actions.prompt_actions())
			end),
		})
	end,
}
