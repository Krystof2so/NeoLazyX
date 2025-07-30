# 🧪 NeoLazyX

**NeoLazyX** est une configuration personnelle et exotique de [LazyVim](https://github.com/LazyVim/LazyVim). 
Elle sert de point de départ pour une version personnalisée de Neovim, intégrant des plugins développés sur mesure.

Pour en savoir plus sur le fonctionnement de LazyVim et son installation, consulter la [documentation officielle](https://lazyvim.github.io/installation).

⚠️ Ce dépôt est destiné à des usages personnels ou expérimentaux, et ne garantit aucune stabilité. Utilisation à vos risques et périls 😄

## Installer la dernière version stable de *Neovim* (optionnel mais recommandé)
```bash
sudo apt install git cmake ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen build-essential
git clone https://github.com/neovim/neovim
cd neovim
git checkout stable
make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build
cpack -G DEB
sudo dpkg -i nvim-linux-*.deb
```

## Installation 
```bash
git clone https://github.com/Krystof2so/NeoLazyX.git ~/.config/nvim
```

Quelques paquets pour venir compléter cette installation :
```bash
sudo apt install ripgrep lazygit nodejs npm xclip python3-pynvim
cargo install tree-sitter-cli
cargo install viu
cargo install ast-grep
sudo npm install -g @mermaid-js/mermaid-cli
sudo npm install -g neovim
```
Ensuite, lancer la commande `:LazyHealth` pour effectuer un état de santé de l'environnement **Neovim** (environnement compatible avec la configuration, installation et configuration des *plugins*, présence des dépendances critiques, vérification des éventuels conflits et erreurs, etc.). `:LazyHealth` est spécifique à **Lazy.nvim**, et complète `:checkhealth` avec des infos centrées sur les *plugins* gérés par **Lazy**.

## Caractéristiques
### Structure de fichiers
```text 
~/.config/nvim
├── lua
│   ├── config
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins
│       ├── plugin1.lua
│       ├── **
│       └── plugin2.lua
└── init.lua
```
```
```

Les fichiers sous `config/` seront automatiquement chargés au moment opportun, et ce avant vos propres fihciers. 

### *Plugins*
Pour ajouter un *plugin*, il suffit d'ajouter la spécification du *plugin* à l'un des fichiers sous `lua/plugins/*.lua`. Vous pouvez créer autant de fichiers que vous le souhaitez à cet emplacement.
Exemple pour le *plugin* **LSP** :
```lua
return {
  -- add symbols-outline
  {
    "simrat39/symbols-outline.nvim",
    cmd = "SymbolsOutline",
    keys = { { "<leader>cs", "<cmd>SymbolsOutline<cr>", desc = "Symbols Outline" } },
    opts = {
      -- add your options that should be passed to the setup() function here
      position = "right",
    },
  },
}
```

[Autres exemples de configuration](https://www.lazyvim.org/configuration/examples)

Vous pouvez structurer votre répertoire `lua/plugins` avec un fichier par `plugin` ou un fichier séparé contenant toutes les spécifications des `plugins` pour certaines fonctionnalités.

Par défaut, **LazyVim** installe un certain nombre de *plugins* via ses imports automatiques.
Mais si vous voulez désactiver un *plugin* spécifique, il suffit d’ajouter un fichier dans le répertoire `lua/plugins/` avec une déclaration spéciale.
Exemple de désactivation de plusieurs *plugins* :
```lua
-- lua/plugins/disabled.lua
return {
  { "folke/trouble.nvim", enabled = false },
  { "lukas-reineke/indent-blankline.nvim", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
}
```

Cela retourne une table contenant une ou plusieurs déclarations de *plugins*.

## *PLugins* installé
### Amélioration du codage
- [nvim-autopairs](https://github.com/windwp/nvim-autopairs)
- [ts-comments.nvim](https://github.com/folke/ts-comments.nvim)

## Commandes spécifiques :
- `:ShowImage` : Affiche une image dans un terminal externe
