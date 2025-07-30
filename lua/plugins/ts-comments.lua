return {
  {
    "folke/ts-comments.nvim",
    event = "VeryLazy",
    opts = {
      lang = {
        python = {
          comment_strings = {
            "# %s", -- commentaire ligne classique
            "'''%s'''", -- docstring simple quote
            '"""%s"""', -- docstring double quote
          },
        },
      },
    },
  },
}
