return {
  "folke/zen-mode.nvim",
  config = function()
    require("zen-mode").setup({
      window = {
        backdrop = 1,
        width = 0.60,
      },
      plugins = {
        options = {
          enabled = true,
          ruler = true,
          showcmd = true,
          laststatus = 3,
        },
      },
    })

    vim.keymap.set("n", "<c-z>", function()
      return ":ZenMode" .. "<cr>"
    end, { expr = true })
  end,
}
