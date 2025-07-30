local M = {}

function M.apply_nord_highlights()
  if vim.g.colors_name == "nord" then
    vim.api.nvim_set_hl(0, "LineNr", { fg = "#81a1c1", bg = "#2e3440" }) -- Numéros de ligne inactifs
    vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "#2e3440", bg = "#5e81ac", bold = true }) -- Numéros de ligne actifs
    vim.api.nvim_set_hl(0, "Comment", { fg = "#d08770", italic = true }) -- Commentaires en orange et italique
    -- Commentaires TreeSitter (au cas où)
    vim.api.nvim_set_hl(0, "@comment", { fg = "#d08770", italic = true })
    vim.api.nvim_set_hl(0, "TSComment", { fg = "#d08770", italic = true })
  end
end

-- Auto-command pour appliquer les highlights chaque fois que le thème nord est chargé
vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "nord",
  callback = function()
    M.apply_nord_highlights()
  end,
})

return M
