return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_no_tab_map = true
		-- Copilot Accept Word
		vim.keymap.set("i", "<C-A>", 'copilot#Accept("\\<CR>")', {
			expr = true,
			replace_keycodes = false,
		})
		-- Copilot Next suggestion
		vim.keymap.set("i", "<C-D>", "<Plug>(copilot-next)")
		-- Copilot Accept Next Word
		vim.keymap.set("i", "<C-S>", "<Plug>(copilot-accept-word)")
		-- Copilot Suggest

		vim.g.copilot_filetypes = { markdown = true, adoc = true, jinja2 = true }
	end,
}
