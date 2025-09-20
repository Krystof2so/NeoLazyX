# vimtex

*Plugin* qui offre une multitude de fonctionnalités utiles pour l'écriture de fichiers **LaTeX**.

- [Tutoriel](https://ejmastnak.com/tutorials/vim-latex/vimtex/)


## Installation

Dans `plugins/vimtex.lua` : 

```lua
  return {
  {
    "lervag/vimtex",
    ft = { "tex", "plaintex" }, -- charge uniquement pour les fichiers LaTeX
    init = function() -- Fonction d’initialisation exécutée avant que le plugin ne soit chargé
      vim.g.vimtex_view_method = "general" -- Pour utiliser un viewer pdf personnalisé
      vim.g.vimtex_view_general_viewer = "evince" -- Définit la commande du viewer
      vim.g.vimtex_view_general_options = "@pdf" -- 'placeholder' -> '@pdf' remplacé par le nom du fichier .pdf à ouvrir
    end,
  },
}
```

Il s'agit d'une configuration minimale.


## Utilisation 

### Modifier et supprimer des éléments
- Supprimer les déclarations `\begin{}` et `\end{}` entourant un environnement **LaTeX** sans modifier le contenu de l'environnement : se positionner dans l'environnement à supprimer, en mode normal, puis saisir `dse` (*Delete surrounding environments*)
- Modifier l'environnement : se positionner dans l'environnement idoine puis saisir `cse` suivi du nom du nouvel environnement.
- Supprimer une commande **LaTeX** tout en conservant ses arguments : se positionner au niveau de la commande (ou de ses arguments) puis saisir `dsc`.
- Modifier la commande **LaTeX** : `csc` suivi du nom de la nouvelle commande.
- Supprimer les délimiteurs (par exemple `()`, `[]`, `{}` et toutes leurs variantes `\left \right`, `\big \big`) sans modifier le contenu : se positionner entre les délimiteurs et saisir `dsd`.
- Modifier les délimiteurs : `csd` suivi du nouveau délimiteur.
- Supprimer les environnements mathématiques ou les délimiteurs `$` tout en conservant le contenu : `ds$`.
- Modifier l'environnement mathématique : `cs$` suivi du nom du nouvel environnement mathématique.

### Bascule entre les styles
- Activer ou désactiver un environnement avec astérisque (comme les *sections* par exemple) : `tsc`.
- Bascule entre `itemize` et `enumerate` : `tse`.
- Bascule entre les environnements mathématique : `ts$`.

### Déplacements
- Se déplacer d'un délimiteur à une autre : `%`.
- Naviguer d'un environnement à un autre : `]m` (suivant) et `[m` (précédent).
- Naviguer d'un environnement mathématique à un autre : `]n` et `[n`.


## Utilisation de l'interface de compilation de *VimTeX*

S'assurer que les programmes **latexmk** et **pdflatex** sont installés sur le système.

Lancer la commande `:VimtexCompile`.


