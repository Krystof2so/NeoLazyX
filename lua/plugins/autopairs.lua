-- #########################################################
-- # nvim-autopairs :                                      #
-- # Un plugin d'autocomplétion ultra puissant pour Neovim #
-- # qui prend en charge plusieurs caractères.             #
-- # https://github.com/windwp/nvim-autopairs              #
-- #########################################################
return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local Rule = require "nvim-autopairs.rule" -- Import du constructeur 'Rule' pour définir des règles
      local npairs = require "nvim-autopairs"
      npairs.setup {}
      npairs.add_rule {
        -- Règle qui permet d’ajouter un comportement automatique pour qu’en tapant des triples quotes,
        -- le plugin insère directement la paire fermante (uniquement valable pour Python)
        Rule("'''", "'''", "python"),
        Rule('"""', '"""', "python"),
      }
    end,
  },
}
