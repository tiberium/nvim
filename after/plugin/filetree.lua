vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

local neo_tree = require('neo-tree')

neo_tree.setup({
  filesystem = {
    filtered_items = {
      hide_dotfiles = false,
    },
  }
})

vim.keymap.set('n', '<c-e>', function ()
  return ":Neotree toggle" .. "<cr>"
end, { expr = true })
