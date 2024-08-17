return {
  "neovim/nvim-lspconfig",
  opts = {
    setup = {
      tailwindcss = function(_, opts)
        -- Additional settings for Phoenix projects
        opts.settings = {
          tailwindCSS = {
            classAttributes = {
              "class",
              "className",
              "ui",
            },
          },
        }
      end,
    },
  },
}
