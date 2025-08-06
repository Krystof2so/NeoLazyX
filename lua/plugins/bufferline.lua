-- ###################
-- # bufferline.nvim #
-- ###################
return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local is_nord = vim.g.colors_name == "nord"
      local highlights = nil
      if is_nord then
        highlights = {
          fill = { bg = "#2E3440" },
          background = { fg = "#4C566A", bg = "#2E3440" },
          buffer_selected = { fg = "#ECEFF4", bg = "#3B4252", bold = true },
          buffer_visible = { fg = "#D8DEE9", bg = "#2E3440" },
          modified = { fg = "#D08770", bg = "#2E3440" },
          modified_selected = { fg = "#D08770", bg = "#3B4252" },
          separator = { fg = "#3B4252", bg = "#2E3440" },
          separator_selected = { fg = "#3B4252", bg = "#3B4252" },
          close_button_selected = { fg = "#D08770", bg = "#3B4252" },
        }
      end
      require("bufferline").setup {
        options = {
          themable = true,
          mode = "buffers", -- Permet de gérer plusieurs 'buffers'
          numbers = "none", -- Pas de numérotation des 'buffers'
          modified_icon = "🖉 ", -- Symbolise un fichier modifié et non enregistré
          buffer_close_icon = "", -- pas d'icône de fermeture de 'buffer' (masqué)
          right_trunc_marker = "»", -- Pour défiler à droite sur la 'bufferline'
          left_trunc_marker = "«", -- Idem à gauche
          separator_style = "slant", -- Utilise des slants
          tab_size = 20, -- longueur des onglets
          diagnostics = "nvim_lsp", -- Affichage des diagnostics "nvim_lsp" si activés par ailleurs
          diagnostics_update_on_insert = true, -- Mise à jour des diagnostics en mode insert
          indicator = { style = "none" }, -- Supprime l’indicateur de buffer actif
        },
        highlights = highlights,
      }
    end,
  },
}
