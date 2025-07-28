-- ***********************************************
-- * :ShowImage                                  *
-- * Afficher une image dans un terminal externe *
-- ***********************************************

vim.api.nvim_create_user_command("ShowImage", function(opts)
  local image_path = vim.fn.expand(opts.args)

  if vim.fn.executable "viu" == 0 then
    vim.notify("❌ 'viu' n'est pas installé", vim.log.levels.ERROR)
    return
  end

  if vim.fn.filereadable(image_path) == 0 then
    vim.notify("❌ Image introuvable : " .. image_path, vim.log.levels.ERROR)
    return
  end

  local shell_cmd = string.format("bash -c 'viu %q; read -p \"<Entrée> pour fermer...\"'", image_path)

  -- Lance viu dans un terminal externe (wezterm, gnome-terminal, etc.)
  vim.fn.jobstart({ "wezterm", "start", "--", "bash", "-c", shell_cmd }, { detach = true })

  vim.notify "✅ Image envoyée dans un terminal externe via viu."
end, {
  nargs = 1,
  complete = "file",
  desc = "Afficher une image dans un terminal externe avec viu",
})
