# 🧪 NeoLazyX

**NeoLazyX** est une configuration personnelle et exotique de [LazyVim](https://github.com/LazyVim/LazyVim). 
Elle sert de point de départ pour une version personnalisée de Neovim, intégrant des plugins développés sur mesure.

Pour en savoir plus sur le fonctionnement de LazyVim et son installation, consulter la [documentation officielle](https://lazyvim.github.io/installation).

⚠️ Ce dépôt est destiné à des usages personnels ou expérimentaux, et ne garantit aucune stabilité. Utilisation à vos risques et périls 😄

## Installation 
```bash
git clone https://github.com/Krystof2so/NeoLazyX.git ~/.config/nvim
```

Quelques paquets pour venir compléter cette installation :
```bash
sudo apti install ripgrep lazygit 
```
Ensuite, lancer la commande `:LazyHealth` pour effectuer un état de santé de l'environnement **Neovim** (environnement compatible avec la configuration, installation et configuration des *plugins*, présence des dépendances critiques, vérification des éventuels conflits et erreurs, etc.). `:LazyHealth` est spécifique à **Lazy.nvim**, et complète `:checkhealth` avec des infos centrées sur les *plugins* gérés par **Lazy**.
