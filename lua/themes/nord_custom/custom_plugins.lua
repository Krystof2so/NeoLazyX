-- lua/themes/nord_custom/custom_plugins.lua
local c = require "themes.nord_custom.colors"

return {
  -- ##############
  -- # Bufferline #
  -- ##############
  -- Fond de la ligne de buffer
  BufferLineFill = { bg = c.polar_night1 },

  -- Buffers non sélectionnés
  BufferLineBackground = { fg = c.polar_night4, bg = c.polar_night1 },
  BufferLineModified = { fg = c.aurora2, bg = c.polar_night1 },
  BufferLineVisible = { fg = c.snow_storm1, bg = c.polar_night1 },
  BufferLineVisibleModified = { fg = c.aurora2, bg = c.polar_night1 },

  -- Buffers sélectionnés
  BufferLineBufferSelected = { fg = c.snow_storm3, bg = c.polar_night2, bold = true, italic = false },
  BufferLineModifiedSelected = { fg = c.aurora2, bg = c.polar_night2 },

  -- Séparateurs
  BufferLineSeparator = { fg = c.polar_night2, bg = c.polar_night1 },
  BufferLineSeparatorVisible = { fg = c.polar_night3, bg = c.polar_night1 },
  BufferLineSeparatorSelected = { fg = c.polar_night3, bg = c.polar_night2 },

  -- Fermer le buffer
  BufferLineCloseButton = { fg = c.polar_night4, bg = c.polar_night1 },
  BufferLineCloseButtonSelected = { fg = c.aurora1, bg = c.polar_night2 },

  -- Indicateur (barre en dessous du buffer actif)
  BufferLineIndicatorSelected = { fg = c.frost3, bg = c.polar_night2 },

  -- Infos de diagnostics (si activées)
  BufferLineDiagnostic = { fg = c.aurora2 },
  BufferLineDiagnosticVisible = { fg = c.aurora3 },
  BufferLineDiagnosticSelected = { fg = c.aurora1, bold = true },

  -- Erreurs & avertissements
  BufferLineError = { fg = c.aurora1, bg = c.polar_night1 },
  BufferLineWarning = { fg = c.aurora2, bg = c.polar_night1 },
  BufferLineInfo = { fg = c.frost2, bg = c.polar_night1 },
}
