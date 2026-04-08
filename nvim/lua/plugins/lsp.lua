return {
  "neovim/nvim-lspconfig",
  opts = {
    inlay_hints = {
      enabled = false,
    },
    servers = {
      svelte = {
        capabilities = {
          workspace = {
            -- https://github.com/LazyVim/LazyVim/issues/6204
            didChangeWatchedFiles = { dynamicRegistration = true },
          },
        },
      },
    },
  },
}
