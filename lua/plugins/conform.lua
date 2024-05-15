return {
  "stevearc/conform.nvim",
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        json = { "prettier" },
        lua = { "stylua" },
      },
      format_on_save = {
        lsp_fallback = true, -- in case the file type formatter doesn't work, conform will try to format using the LSPAny
        async = false,
        timeout_ms = 500,
      },
    })
  end,
}
