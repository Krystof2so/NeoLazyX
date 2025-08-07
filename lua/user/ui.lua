-- lua/user/ui.lua
local M = {}

function M.update_bufferline_highlights()
  local ok, bufferline = pcall(require, "bufferline")
  if not ok then
    return
  end

  local highlights = nil
  local theme = vim.g.colors_name

  if theme == "nord" then
    highlights = require "themes_for_plugins.bufferline_nord"
  elseif theme == "everforest" then
    highlights = require "themes_for_plugins.bufferline_everforest"
  elseif theme == "gruvbox" then
    highlights = require "themes_for_plugins.bufferline_gruvbox"
  end

  if highlights and bufferline.highlights and bufferline.highlights.update then
    bufferline.highlights.update(highlights)
  end
end

return M
