-- File-type icons, from nvim-web-devicons. Nothing is mapped; it is a library
-- other plugins ask for: aineo's explorer draws an icon before each file with
-- it, and snacks uses it where it shows files. The icons need a Nerd Font,
-- which Ghostty has built in. Loaded when a plugin first requires it.
return {
  "nvim-tree/nvim-web-devicons",
  lazy = true,
  opts = {},
}
