-- lua/themes/nord_custom/base.lua
local c = require "themes.nord_custom.colors"

return {
  -- Apparence générale
  Normal = { fg = c.snow_storm1, bg = c.polar_night1 },
  Comment = { fg = c.frost2, italic = true },
  Visual = { bg = c.polar_night3 },
  CursorLine = { bg = c.polar_night2 },
  ColorColumn = { bg = c.polar_night2 },

  -- Numéros de lignes
  LineNr = { fg = c.snow_storm1, bg = c.polar_night1 },
  CursorLineNr = { fg = c.polar_night1, bg = c.frost3, bold = true },

  -- Barre de statut
  StatusLine = { fg = c.snow_storm2, bg = c.polar_night3 },
  StatusLineNC = { fg = c.polar_night4, bg = c.polar_night2 },

  -- Menu flottant (popup)
  Pmenu = { fg = c.snow_storm1, bg = c.polar_night2 },
  PmenuSel = { fg = c.polar_night1, bg = c.frost3, bold = true },
  PmenuSbar = { bg = c.polar_night3 },
  PmenuThumb = { bg = c.polar_night4 },

  -- Fenêtres flottantes
  NormalFloat = { fg = c.snow_storm1, bg = c.polar_night1 },
  FloatBorder = { fg = c.polar_night3, bg = c.polar_night1 },

  -- Recherche
  Search = { bg = c.frost1, fg = c.polar_night1 },
  IncSearch = { bg = c.frost2, fg = c.polar_night1 },

  -- Erreurs & diagnostics
  ErrorMsg = { fg = c.aurora1, bold = true },
  WarningMsg = { fg = c.aurora2 },
  ModeMsg = { fg = c.frost4, bold = true },

  -- Diff
  DiffAdd = { bg = c.aurora4 },
  DiffDelete = { bg = c.aurora1 },
  DiffChange = { bg = c.frost3 },
  DiffText = { bg = c.frost4 },

  -- SignColumn (par exemple pour GitSigns)
  SignColumn = { bg = c.polar_night1 },

  -- MatchParen
  MatchParen = { fg = c.frost4, bg = c.polar_night3, bold = true },

  -- Tabs
  TabLine = { fg = c.polar_night4, bg = c.polar_night2 },
  TabLineFill = { bg = c.polar_night1 },
  TabLineSel = { fg = c.snow_storm1, bg = c.polar_night3 },

  -- Lignes sous le curseur
  Cursor = { reverse = true },
  lCursor = { reverse = true },
}
