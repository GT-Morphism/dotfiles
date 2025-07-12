return {
  "neovim/nvim-lspconfig",
  opts = {
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
