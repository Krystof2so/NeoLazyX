-- ###################################################################################
-- # FR : Les options sont automatiquement chargées avant le démarrage de lazy.nvim. #
-- # Options par défaut toujours définies :                                          #
-- # https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua     #
-- # Ajoutez ici toutes les options supplémentaires.                                 #
-- # Documentation pour les options :                                                #
-- # https://neovim.io/doc/user/options.html                                         #
-- # ------------------------------------------------------------------------------- #
-- # EN : Options are automatically loaded before lazy.nvim startup                  #
-- # Default options that are always set:                                            #
-- # https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua     #
-- # Add any additional options here                                                 #
-- # Documentation for options :                                                     #
-- # https://neovim.io/doc/user/options.html                                         #
-- ###################################################################################

local opt = vim.opt

-- ********************
-- * Au niveau global *
-- ********************

vim.g.mapleader = " " -- Définit <space> comme touche leader (utile pour les raccourcis clavier)
-- Les raccourcis pourront se définir ainsi :
-- 'vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<CR>")

vim.g.autoformat = true -- Formatage automatique du code au moment de la sauvegarde

vim.g.lazyvim_picker = "auto" -- Choix du système de sélection (ici, celui disponible)

-- Autocomplétion :
vim.g.lazyvim_cmp = "auto" -- Choix du moteur de complétion (ici, celui activé dans ':LazyExtras' - Recommandé)
vim.g.ai_cmp = false -- N'utilise pas l'IA comme source de complétion (si présence d'une source IA)

vim.g.deprecation_warnings = false -- Ne pas cacher les messages de dépréciation de LazyVim

-- *****************************
-- * Spécifiques à des plugins *
-- *****************************

-- Spécifique à 'snakes.vim' :
vim.g.snacks_animate = true -- Activation/Désactivation des animations du plugin
-- Affichage personnalisé de la colonne de statut via le plugin :
opt.statuscolumn = [[%!v:lua.require'snacks.statuscolumn'.get()]]

-- **********************************************************
-- * Configurer les options d’édition de Neovim via vim.opt *
-- **********************************************************

-- Formatage et recherche
-- ----------------------
-- Utilise le moteur de formatage personnalisé de LazyVim (souvent conform.nvim) :
opt.formatexpr = "v:lua.require'lazyvim.util'.format.formatexpr()"
opt.formatoptions = "jcroqlnt"
opt.grepformat = "%f:%l:%c:%m" -- Définit le format et la commande pour :grep
opt.grepprg = "rg --vimgrep" -- Utilise ripgrep (rg) pour une recherche rapide

-- Navigation / Interface
-- ----------------------
opt.ignorecase = true
opt.smartcase = true
opt.jumpoptions = "view"
opt.laststatus = 3

-- Affichage et wrap
-- -----------------
opt.linebreak = true -- Coupure propre des lignes (fin d'un mot)
opt.list = true
opt.mouse = "a" -- Active la souris partout (a = all modes)
-- Ligne courante en numéro absolu, les autres en relatif :
opt.number = true
opt.relativenumber = true
opt.ruler = false -- Supprime la règle ligne/colonne en bas (remplacé par statusline)

-- Défilement et confort
-- ---------------------
-- Contrôle du scrolling :
opt.scrolloff = 8 -- Nombre de lignes verticales visibles autour du curseur
opt.sidescrolloff = 4 -- A l'horizontale
opt.signcolumn = "yes" -- Colonne toujours visible pour les signes (LSP, Git, diagnostics)

-- Sessions
-- --------
opt.sessionoptions = { -- Détermine ce que Neovim sauvegarde d'une session (complet ici)
  "buffers", -- Les buffers ouverts
  "curdir", -- Le répertoire courant
  "tabpages", -- Tous les onglets
  "winsize", -- Dimension des fenêtres
  "help", -- Réouvre les fenêtres d'aide si elles étaient ouvertes
  "globals", -- Les variables globales
  "skiprtp", -- Ignore la sauvegarde du runtimepath
  "folds", -- Les états de repliement dans chaque buffer
}

-- Indentation
-- -----------
opt.tabstop = 2 -- Indentation à deux espaces
opt.smartindent = true -- Aide à ajuster automatiquement l’indentation dans les blocs de code
opt.shiftround = true -- Indentation avec '<' ou '>' toujours avec un multiple de 'shiftwidth'
opt.shiftwidth = 2
-- Si sélection d'une ligne indentée de 3 : '>>' indentera à 4, puis à 6, etc. (multiple de 2)

-- Interface et comportement
-- -------------------------
opt.shortmess:append { W = true, I = true, c = true, C = true }
opt.showmode = false -- N'affiche pas le mode (statusline s'en charge)
opt.pumblend = 0 -- Transparence du menu de complétion
opt.pumheight = 8 -- Nombre max d'entrées visibles dans le popup
opt.termguicolors = true -- Active la gestion des couleurs 24-bit (recommandé pour les thèmes modernes)
opt.spell = true
opt.spelllang = { "en", "fr" } -- Pour l'anglais et le français

-- Repliement du code (Neovim >= 0.10)
-- -----------------------------------
opt.foldlevel = 99 -- Tout est déplié à l'ouverture
opt.foldexpr = "v:lua.LazyVim.treesitter.foldexpr()"
opt.foldmethod = "expr" -- Repli calculé dynamiquement
opt.foldtext = ">" -- Affichage pour le texte replié

-- Performances et expérience
-- --------------------------
-- Réduit le délai avant le déclenchement de which-key ou des mappings complexes :
opt.timeoutlen = vim.g.vscode and 1000 or 300
-- Accélère les événements déclenchés par CursorHold (diagnostics, LSP, etc.) :
opt.updatetime = 200
-- Historique d'annulation persistant :
opt.undofile = true
opt.undolevels = 5000
-- Active le défilement fluide :
opt.smoothscroll = true -- uniquement si Neovim >= 0.10
