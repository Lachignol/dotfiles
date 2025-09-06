return {
  {
    "folke/trouble.nvim",
    opts = {}, -- options par défaut, ou mettez vos options ici
    cmd = "Trouble",
    keys = {
      {
        "<leader>fr",
        "<cmd>Trouble lsp toggle focus=true win.position=right win.size=50<cr>",
        desc = "LSP Definitions / references / ... (Trouble)",
      },
      { "<leader>xL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
      { "<leader>xQ", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
    },
  },
}
