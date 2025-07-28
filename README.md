# 🧪 NeoLazyX

**NeoLazyX** est une configuration personnelle et exotique de [LazyVim](https://github.com/LazyVim/LazyVim). 
Elle sert de point de départ pour une version personnalisée de Neovim, intégrant des plugins développés sur mesure.

Pour en savoir plus sur le fonctionnement de LazyVim et son installation, consulter la [documentation officielle](https://lazyvim.github.io/installation).

⚠️ Ce dépôt est destiné à des usages personnels ou expérimentaux, et ne garantit aucune stabilité. Utilisation à vos risques et périls 😄

## Installer la dernière version stable de *Neocvim* (optionnel mais recommandé)
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

## Commandes spécifiques :
- `:ShowImage` : Affiche une image dans un terminal externe
