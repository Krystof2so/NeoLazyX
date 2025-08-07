local M = {}

local themes = {
  {
    name = "nord",
    setup = function()
      vim.o.background = "dark"
      vim.g.nord_borders = true
      vim.g.nord_contrast = true
      vim.g.nord_disable_background = false
    end,
  },
  {
    name = "gruvbox",
    setup = function()
      vim.o.background = "light"
    end,
  },
  {
    name = "everforest",
    setup = function()
      vim.g.everforest_background = "medium"
      vim.o.background = "dark"
    end,
  },
}

local current_index = 1

function M.apply_theme(theme)
  theme.setup()
  vim.cmd.colorscheme(theme.name)
  vim.notify("Thème appliqué : " .. theme.name, vim.log.levels.INFO)
  -- mettre à jour bufferline :
  if require("user.ui").update_bufferline_highlights then
    require("user.ui").update_bufferline_highlights()
  end
end

function M.toggle()
  current_index = current_index % #themes + 1
  M.apply_theme(themes[current_index])
end

function M.setup()
  M.apply_theme(themes[1]) -- Nord par défaut au démarrage
end

return M
