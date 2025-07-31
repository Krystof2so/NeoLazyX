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
      }
    end,
  },
}
