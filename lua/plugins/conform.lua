return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
    },
    formatters = {
      stylua = {
        prepend_args = {
          "--config-path",
          vim.fn.expand "~/.config/nvim/stylua.toml",
        },
      },
    },
  },
}
