-- Language servers: mason installs them, mason-lspconfig enables every
-- installed one through nvim-lspconfig's configs, so no per-server setup.
-- Add a server with :Mason, or :LspInstall in a file of that language;
-- servers in `ensure_installed` are installed on every host.
-- With a server attached, Neovim's own keys apply: <C-]> definition,
-- K hover, grr references, gri implementation, grn rename, gra actions.
return {
  { "williamboman/mason.nvim", opts = {} },
  {
    "williamboman/mason-lspconfig",
    dependencies = { "williamboman/mason.nvim", "neovim/nvim-lspconfig" },
    opts = { ensure_installed = { "lua_ls" } },
  },
}
