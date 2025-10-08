local excluded = {
  "node_modules/",
  "dist/",
  ".git/",
  "build/",
  "target/",
  "coverage/",
  ".esbuild/",
  "pnpm-lock.yaml",
}

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      hidden = true,
      ignored = true,
      exclude = excluded,
    },
  },
}
