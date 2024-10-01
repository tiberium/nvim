return {
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  "f-person/git-blame.nvim",
  {
    -- Adds git related signs to the gutter, as well as utilities for managing changes
    "lewis6991/gitsigns.nvim",
    opts = {
      -- See `:help gitsigns.txt`
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
      on_attach = function(bufnr)
        vim.keymap.set(
          "n",
          "<leader>gN",
          require("gitsigns").prev_hunk,
          { buffer = bufnr, desc = "[G]it previous hunk [N]" }
        )
        vim.keymap.set("n", "<leader>gn", require("gitsigns").next_hunk, { buffer = bufnr, desc = "[G]it [n]ext hunk" })
        vim.keymap.set(
          "n",
          "<leader>gp",
          require("gitsigns").preview_hunk,
          { buffer = bufnr, desc = "[G]it [p]review hunk" }
        )
        vim.keymap.set(
          "n",
          "<leader>gr",
          require("gitsigns").reset_hunk,
          { buffer = bufnr, desc = "[G]it [r]eset hunk" }
        )
      end,
    },
  },
}
