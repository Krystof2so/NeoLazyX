-- bootstrap lazy.nvim, LazyVim and your plugins
require "config.lazy"
require "user.commands"

vim.g.python3_host_prog = "/usr/bin/python3"

-- Applique le thème
vim.cmd.colorscheme "nord"

-- Appliquer les highlights spécifiques au thème nord (le cas échéant)
local highlights = require "config.highlights"
highlights.apply_nord_highlights()
