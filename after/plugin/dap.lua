vim.keymap.set('n', "<F5>", "<cmd> DapContinue <CR>")
vim.keymap.set('n', "<F6>", "<cmd> DapStepOver <CR>")
vim.keymap.set('n', "<F7>", "<cmd> DapStepInto <CR>")
vim.keymap.set('n', "<F8>", "<cmd> DapStepOut <CR>")
vim.keymap.set('n', "<leader>b", "<cmd> DapToggleBreakpoint <CR>", {desc = "DAP: ToggleBreakpoint"})
vim.keymap.set('n', "<leader>B", ":lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition'))  <CR>", {desc = "DAP: ToggleBreakpoint with condition"})





