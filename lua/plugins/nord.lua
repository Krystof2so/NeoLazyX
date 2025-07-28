return {
  {
    "shaunsingh/nord.nvim",
    lazy = false,
    priority = 1000, -- s'assurer qu'il est chargé en premier
    config = function()
      vim.cmd.colorscheme "nord"
    end,
  },
}
