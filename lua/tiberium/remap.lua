vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Moving blocks of text up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Keep curson in the middle after jumping to the next/previous found text
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set('n', '<c-q>', function ()
  return ":quitall" .. "<cr>"
end, { expr = true })
