vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Moving blocks of text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep curson in the middle after jumping to the next/previous found text
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "<c-a>", function()
	return ":quit" .. "<cr>"
end, { expr = true })

vim.keymap.set("n", "<c-q>", function()
	return ":quitall" .. "<cr>"
end, { expr = true })

-- TODO Move to conform configuration
-- vim.keymap.set({ "n", "v" }, "<leader>F", function()
--   local conform = require("conform")
--   conform.format({
--     lsp_fallback = true,
--     async = false,
--     timeout_ms = 500,
--   })
-- end, { desc = "Format file or selected text" })

-- Copilot settings

vim.cmd(
	[[command! -nargs=0 Treeshow execute "vnew | setlocal buftype=nofile | read !tree -n -I '*.pyc|*pycache*'" expand('%:p:h') | normal gg]]
)

vim.keymap.set("n", "<c-e>", function()
	return ":Treeshow" .. "<cr>"
end, { expr = true })

-- Add keymap for tmux-sesionizer
vim.keymap.set("n", "<C-F>", function()
	return ":silent !tmux new-window tmux-sessionizer" .. "<cr>"
end, { expr = true })
