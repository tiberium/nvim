return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      backdrop = 1,
      width = 0.60,
    },
  },
  config = function()
    vim.keymap.set("n", "<c-z>", function()
      return ":ZenMode" .. "<cr>"
    end, { expr = true })
  end,
}
