vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local neo_tree = require('neo-tree')

neo_tree.setup{}

vim.keymap.set('n', '<leader><Tab>', function ()
  return ":Neotree toggle" .. "<cr>"
end, { expr = true, desc = '[Tab] Toggle Neotree'})
