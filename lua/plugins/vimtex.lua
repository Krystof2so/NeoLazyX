-- ########################################################
-- # Vimtex                                               #
-- #                                                      #
-- # VimTeX est une extension moderne pour Vim et Neovim, #
-- # destinée à la gestion du type de fichier             #
-- # et de la syntaxe des fichiers LaTeX.                 #
-- #                                                      #
-- # https://github.com/lervag/vimtex                     #
-- ########################################################

return {
  {
    "lervag/vimtex",
    ft = { "tex", "plaintex" }, -- charge uniquement pour les fichiers LaTeX
    init = function() -- Fonction d’initialisation exécutée avant que le plugin ne soit chargé
      vim.g.vimtex_imaps_enabled = 0 -- Désactiver les mappings en mode insertion
      vim.g.vimtex_view_method = "general" -- Pour utiliser un viewer pdf personnalisé
      vim.g.vimtex_view_general_viewer = "evince" -- Définit la commande du viewer
      vim.g.vimtex_view_general_options = "@pdf" -- 'placeholder' -> '@pdf' remplacé par le nom du fichier .pdf à ouvrir
    end,
  },
}
