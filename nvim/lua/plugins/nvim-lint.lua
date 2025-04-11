return {
  "mfussenegger/nvim-lint",
  opts = {
    linters = {
      sqlfluff = {
        args = {
          "lint",
          "--format=json",
        },
      },
    },
    linters_by_ft = {
      sql = { "sqlfluff" },
    },
  },
}
