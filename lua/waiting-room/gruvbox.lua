return {
  "ellisonleao/gruvbox.nvim",
  as = "gruvbox",
  priority = 1000,
  config = function()
    require("gruvbox").setup({
      contrast = "hard",
      transparent_mode = true,
    })

    vim.cmd.colorscheme("gruvbox")
  end,
}
