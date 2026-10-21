-- Colorschemes, switched with Themery (:Themery or <leader>ut).
-- The picked theme is saved to stdpath("data")/themery/state.json and
-- restored on startup; until a theme has been picked, gruvbox applies.
-- To add a theme: add its plugin to `dependencies` and its colorscheme
-- name(s) to `themes`.
return {
  "zaldih/themery.nvim",
  lazy = false,
  dependencies = {
    "morhetz/gruvbox",
    "folke/tokyonight.nvim",
    { "catppuccin/nvim", name = "catppuccin" },
    "rebelot/kanagawa.nvim",
    { "rose-pine/neovim", name = "rose-pine" },
    "Mofiqul/dracula.nvim",
  },
  keys = {
    { "<leader>ut", "<cmd>Themery<cr>", desc = "Theme Switcher" },
  },
  config = function()
    require("themery").setup({
      themes = {
        "gruvbox",
        "tokyonight-night",
        "tokyonight-storm",
        "tokyonight-moon",
        "tokyonight-day",
        "catppuccin-mocha",
        "catppuccin-macchiato",
        "catppuccin-frappe",
        "catppuccin-latte",
        "kanagawa-wave",
        "kanagawa-dragon",
        -- Unlike the other light variants, lotus leaves 'background' dark.
        { name = "kanagawa-lotus", colorscheme = "kanagawa-lotus", after = [[vim.o.background = "light"]] },
        "rose-pine-main",
        "rose-pine-moon",
        "rose-pine-dawn",
        "dracula",
        "dracula-soft",
      },
      -- Light variants switch 'background' to light; reset it so dark themes
      -- that follow 'background' (gruvbox) don't stay light afterwards.
      globalBefore = [[vim.o.background = "dark"]],
      livePreview = true,
    })
    -- Themery only restores a saved pick; with none saved yet it applies nothing.
    if not vim.g.colors_name then
      vim.cmd.colorscheme("gruvbox")
    end
  end,
}
