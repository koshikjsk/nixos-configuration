return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      flavour = "mocha",          -- latte, frappe, macchiato, mocha
      transparent_background = true,
      float = {
        transparent = true,       -- прозрачные floating-окна (lazy, mason, telescope и т.д.)
        solid = false,
      },
      term_colors = true,
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
