function ColorMyPencils(color)
  color = color or "rose-pine"
  vim.cmd.colorscheme(color)

-- local groups = {
--    'Normal', 'NormalSB', 'NormalNC', 'NormalFloat', 'Comment', 'Constant', 'Special', 'Identifier',
--    'Statement', 'PreProc', 'Type', 'Underlined', 'Todo', 'String', 'Function',
--    'Conditional', 'Repeat', 'Operator', 'Structure', 'LineNr', 'NonText',
--    'SignColumn', 'CursorLineNr', 'EndOfBuffer'
--  }

--  for _, name in pairs(groups) do
--    vim.api.nvim_set_hl(0, name, { bg = "none" })
--  end



--  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
--  vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })
--  vim.api.nvim_set_hl(0, "NormalSB", { bg = "none" })
end

ColorMyPencils()
