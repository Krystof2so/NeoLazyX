-- ####################################################################
-- # FR : Configure lazy.nvim, charge LazyVim et vos propres plugins, #
-- # puis automatise la mise à jour de Mason au démarrage             #
-- # ---------------------------------------------------------------- #
-- # EN : Configure lazy.nvim, load LazyVim and your own plugins,     #
-- # then automate Mason updates at startup                           #
-- ####################################################################

-- Clonage de lazy.nvim (branche stable) si non présent :
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim" -- Chemin d'installation local
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system { "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then -- Si échec clonage
    vim.api.nvim_echo({
      { "Echec du clonage de lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPresser une touche pour quitter..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
-- Ajoute lazy.nvim au runtimepath, pour pouvoir le require :
vim.opt.rtp:prepend(lazypath)

-- Configuration de Lazy et des plugins :
require("lazy").setup {
  spec = {
    { "LazyVim/LazyVim", import = "lazyvim.plugins" }, -- charge les plugins de base de LazyVim
    { import = "plugins" }, -- charge les plugins personnalisés (répertoire local `lua/plugins`)
    -- { import = "plugins.mason" }, -- import séparé pour la config de mason
    -- { import = "plugins.nord" }, -- import du thème Nord
    --    { import = "plugins.autopairs" },
  },
  defaults = {
    -- Par défaut, seuls les plugins LazyVim seront chargés de manière différée.
    -- Vos plugins personnalisés seront chargés au démarrage.
    -- Si vous savez ce que vous faites, vous pouvez définir cette option sur `true`
    -- pour que tous vos plugins personnalisés soient chargés de manière différée par défaut.
    lazy = false,
    -- Il est recommandé de laisser version=false pour l'instant,
    -- car de nombreux plugins qui prennent en charge le versionnage
    -- ont des versions obsolètes, ce qui pourrait endommager votre installation de Neovim.
    version = false, -- toujours utiliser la dernière version git commit
    -- version = "*", -- essayez d'installer la dernière version stable pour les plugins qui prennent en charge semver
  },
  install = { colorscheme = { "nord" } }, -- Installe le thème Nord juste après l'installation
  checker = {
    enabled = true, -- Vérifiez régulièrement les mises à jour des plugins.
    notify = true, -- Notifier lors de la mise à jour
  }, -- vérifier automatiquement les mises à jour des plugins
  performance = {
    rtp = {
      -- Désactive certains plugins Vim par défaut inutiles ou obsolètes, pour accélérer le démarrage.
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
}

-- Autocmd MasonUpdate au démarrage
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local ok, _ = pcall(require, "mason")
    if ok then
      -- Mason est chargé, lance la mise à jour
      vim.cmd "MasonUpdate"
    end
  end,
})
