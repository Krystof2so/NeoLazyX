local M = {}

local highlights = require "config.highlights" -- charger le module highlights

-- Liste des thèmes à alterner
M.themes = {
  { name = "nord" },
  { name = "kanagawa-lotus" },
  { name = "kanagawa-dragon" },
}

-- Index du thème actuellement utilisé
M.current_index = 1

-- Fonction interne : applique un thème donné
local function set_theme(name)
  -- Si le thème est une variante de Kanagawa, configure d'abord le plugin
  if name:match "^kanagawa" then
    local variant = name:match "kanagawa%-(.+)"
    require("kanagawa").setup { theme = variant }
  end

  -- Applique le thème
  vim.cmd.colorscheme(name)

  -- Appliquer les highlights spécifiques au thème nord (le cas échéant)
  highlights.apply_nord_highlights()

  -- Affiche une notification
  vim.notify("🎨 Thème activé : " .. name, vim.log.levels.INFO, { title = "Thème" })
end

-- Fonction publique : alterne entre les thèmes
function M.ToggleTheme()
  M.current_index = (M.current_index % #M.themes) + 1
  set_theme(M.themes[M.current_index].name)
end

-- Applique le thème par défaut au démarrage
set_theme(M.themes[M.current_index].name)

return M
