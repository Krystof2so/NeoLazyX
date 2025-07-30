# nvim-autopairs

Dépôt **GitHub** : https://github.com/windwp/nvim-autopairs

Installation minimale :
```lua
return {
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    config = function()
      local npairs = require "nvim-autopairs"
      npairs.setup {
        -- Placer ici la configuration personnalisée
      }
    end,
  },
}
```


