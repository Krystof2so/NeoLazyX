-- bootstrap lazy.nvim, LazyVim and your plugins
require "config.lazy"
require "user.commands"

vim.g.python3_host_prog = "/usr/bin/python3"

-- Charger le thème nord personnalisé APRÈS LazyVim
vim.schedule(function()
  require("themes.nord_custom").load()
end)
