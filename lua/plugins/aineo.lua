-- aineo, loaded from ~/Development/Personal/aineo-release: a clone checked
-- out (detached) at a release tag, currently v0.1.0. It stays put while
-- aineo is developed on dev; it moves only when a new release is cut:
--   git -C ~/Development/Personal/aineo-release fetch --tags
--   git -C ~/Development/Personal/aineo-release checkout <tag>
-- A bare `nvim` opens Claude Code; opt out with
--   vim.g.aineo = { autostart = false }
-- :help aineo and :checkhealth aineo describe the rest.
return {
  dir = vim.fn.expand("~/Development/Personal/aineo-release"),
  name = "aineo",
  lazy = false,
}
