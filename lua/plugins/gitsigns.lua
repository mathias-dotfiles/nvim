-- Git signs and blame, from gitsigns. No keys are mapped; it is used by
-- command:
--   :Gitsigns blame                       a blame column beside the file
--   :Gitsigns blame_line                  the blame of the line under the cursor
--   :Gitsigns toggle_current_line_blame   the current line's blame at its end
-- Added, changed and deleted lines are marked in the sign column.
return {
  "lewis6991/gitsigns.nvim",
  event = { "BufReadPre", "BufNewFile" },
  cmd = "Gitsigns",
  opts = {},
}
