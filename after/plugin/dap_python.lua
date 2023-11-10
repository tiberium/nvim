
vim.keymap.set('n', '<leader>dpr', function ()
  require('dap-python').test_method()
end, { desc = 'DAP: Debug Python Run' })
