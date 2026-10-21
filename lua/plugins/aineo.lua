-- aineo, installed from github.com/mathiasbrito/aineo at its newest release
-- tag (version = "*"), so every host gets the same released code and dev
-- never reaches the editor. lazy-lock.json pins the commit; a new release
-- arrives with :Lazy update aineo, and the updated lock file is committed.
-- A bare `nvim` opens Claude Code; opt out with
--   vim.g.aineo = { autostart = false }
-- :help aineo and :checkhealth aineo describe the rest.
return {
  "mathiasbrito/aineo",
  version = "*",
  lazy = false,
}
