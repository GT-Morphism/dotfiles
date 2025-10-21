local excluded = {
  "node_modules/",
  "dist/",
  ".git/",
  "build/",
  "target/",
  "coverage/",
  ".esbuild/",
  ".svelte-kit/",
  "**/paraglide/",
  "**/cache/",
  "pnpm-lock.yaml",
}

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          hidden = true,
          ignored = true,
          include = excluded,
        },
      },
      hidden = true,
      ignored = true,
      exclude = excluded,
    },
  },
}
