-- lua/themes/nord_custom/init.lua
local M = {}

function M.load()
  local base = require "themes.nord_custom.base"
  local plugins = require "themes.nord_custom.custom_plugins"
  -- Appliquer les highlights de base :
  for group, opts in pairs(base) do
    vim.api.nvim_set_hl(0, group, opts)
  end
  -- Appliquer les highlights spécifiques aux plugins :
  for group, opts in pairs(plugins) do
    vim.api.nvim_set_hl(0, group, opts)
  end
end

return M
