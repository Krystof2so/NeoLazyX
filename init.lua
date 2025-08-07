-- bootstrap lazy.nvim, LazyVim and your plugins
require "config.lazy"
require "user.commands"

vim.g.python3_host_prog = "/usr/bin/python3"

local theme_toggle = require "user.theme_toggle"
theme_toggle.setup()

-- Bind pour toggle thème (exemple)
vim.keymap.set("n", "<leader>tt", theme_toggle.toggle, { desc = "Toggle Theme" })
