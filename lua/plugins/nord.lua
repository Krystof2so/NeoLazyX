return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000, -- chargé avant les autres plugins pour appliquer le thème tôt
    config = function()
      -- Configuration avant d'activer le thème
      vim.g.nord_disable_background = true -- rend l'arrière-plan transparent
      vim.g.nord_disable_float_background = true -- rend les fenêtres flottantes transparentes
      vim.g.nord_italic = true -- active les italiques (optionnel)
      vim.g.nord_borders = true -- active les bordures plus visibles (optionnel)

      vim.cmd.colorscheme "nord"
    end,
  },
}
