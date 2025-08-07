return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.nord_borders = true
      vim.g.nord_contrast = true
      vim.g.nord_disable_background = false
      vim.cmd "colorscheme nord"
      -- Exemple surcharge : commentaires en frost2 italique
      vim.api.nvim_set_hl(0, "Comment", { fg = "#88c0d0", italic = true })
    end,
  },
  {
    "morhetz/gruvbox",
    lazy = false,
    priority = 1000,
  },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
  },
}
