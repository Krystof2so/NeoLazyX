return {
  {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    config = function()
      require("bufferline").setup {
        options = {
          themable = true,
          mode = "buffers",
          numbers = "none",
          modified_icon = "🖉 ",
          buffer_close_icon = "",
          right_trunc_marker = "»",
          left_trunc_marker = "«",
          separator_style = "slant",
          tab_size = 20,
          diagnostics = "nvim_lsp",
          diagnostics_update_on_insert = true,
          indicator = { style = "none" },
        },
      }

      -- Recharge les couleurs après chaque changement de thème
      vim.api.nvim_create_autocmd("ColorScheme", {
        callback = function()
          require("user.ui").update_bufferline_highlights()
        end,
      })
    end,
  },
}
