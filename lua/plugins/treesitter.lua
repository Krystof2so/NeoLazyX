return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = { -- Liste des parsers à installer
      "lua",
      "python",
      "latex",
      "html",
      "css",
      "rust",
      "markdown",
      "bash",
    },
  },
}
