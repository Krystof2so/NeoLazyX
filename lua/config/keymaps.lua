-- ##################################################################################
-- # FR : -- Les keymaps sont automatiquement chargés lors de l'événement VeryLazy. #
-- # Keymaps par défaut toujours définis :                                          #
-- # https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua    #
-- # Ajoutez ici tout keymap supplémentaire.                                        #
-- # ------------------------------------------------------------------------------ #
-- # EN : Keymaps are automatically loaded on the VeryLazy event                    #
-- # Default keymaps that are always set:                                           #
-- # https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua    #
-- # Add any additional keymaps here                                                #
-- ##################################################################################

-- Raccourci pour alterner les thèmes
vim.keymap.set("n", "<leader>tt", function()
  require("user.theme_toggle").toggle()
end, { desc = "Basculer entre Nord/Everforest" })
