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

vim.keymap.set("n", "<c-z>", function()
  return ":ZenMode" .. "<cr>"
end, { expr = true })

vim.keymap.set({ "n", "v" }, "<leader>F", function()
  local conform = require("conform")
  conform.format({
    lsp_fallback = true,
    async = false,
    timeout_ms = 500,
  })
end, { desc = "Format file or selected text" })

-- Copilot settings
vim.g.copilot_no_tab_map = true
-- Copilot Accept Word
vim.keymap.set("i", "<C-J>", 'copilot#Accept("\\<CR>")', {
  expr = true,
  replace_keycodes = false,
})
-- Copilot Next suggestion
vim.keymap.set("i", "<C-H>", "<Plug>(copilot-next)")
-- Copilot Accept Next Word
vim.keymap.set("i", "<C-M>", "<Plug>(copilot-accept-word)")

--local builtin = require("telescope.builtin")
--vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = "[S]earch [r]ecently opened files" })
