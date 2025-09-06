return {
  {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    -- c'est cette commande qui definit que c'est le theme
    config = function()
      vim.cmd.colorscheme("cyberdream")
    end,
  },
}
