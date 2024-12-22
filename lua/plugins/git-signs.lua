return {
	"lewis6991/gitsigns.nvim",
	config = function()
		require("gitsigns").setup({
			current_line_blame = true,
			-- current_line_blame_formatter = "  <author_time:%d-%m-%y %H:%M:%S> • <author> • <summary> DEBUG",
			current_line_blame_formatter = function(_, blame_info)
				local summary_shorten_len = 15
				local summary = blame_info["summary"]

				if string.find(summary, ":") then
					local prefix = string.sub(summary, 1, string.find(summary, ":") - 1)
					prefix = string.gsub(prefix, "%(.*%)", "")

					local prefixes =
						{ "feat", "fix", "chore", "docs", "style", "refactor", "perf", "test", "build", "ci" }
					for _, p in ipairs(prefixes) do
						if p == prefix then
							summary = string.sub(summary, string.find(summary, ":") + 1)
							break
						end
					end
				end

				summary = string.gsub(summary, "^%s*(.-)%s*$", "%1")

				local author = blame_info["author"]
				local author_last_word = string.match(author, "[%w%z\128-\255]+$")
				if author_last_word then
					author = author_last_word
				end

				local summary_shorten = string.sub(summary, 1, 20)
				if string.len(summary) > summary_shorten_len then
					summary_shorten = summary_shorten .. "..."
				end

				local git_blame_text = string.format(" %s %s %s", author, summary_shorten, blame_info["abbrev_sha"])

				return { { git_blame_text, "Conceal" } }
			end,
			current_line_blame_opts = {
				delay = 0,
				virt_text_pos = "right_align",
			},

			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
				untracked = { text = "|" },
			},
			vim.keymap.set("n", "<leader>gn", function()
				require("gitsigns").nav_hunk("next")
			end, { desc = "[G]it [n]ext hunk" }),
			vim.keymap.set("n", "<leader>gN", function()
				require("gitsigns").nav_hunk("prev")
			end, { desc = "[G]it previous hunk [N]" }),
			vim.keymap.set("n", "<leader>gp", require("gitsigns").preview_hunk, { desc = "[G]it [p]review hunk" }),
			vim.keymap.set("n", "<leader>gr", require("gitsigns").reset_hunk, { desc = "[G]it [r]eset hunk" }),
			vim.keymap.set("n", "<leader>gb", require("gitsigns").blame, { desc = "[G]it [b]lame" }),
		})
	end,
}
