return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "oxlint" },
        typescript = { "oxlint" },
        svelte = { "oxlint" },
      },
    },
    init = function()
      require("lint").linters.oxlint = {
        name = "oxlint",
        cmd = "oxlint",
        stdin = false,
        args = { "--type-aware", "--format", "unix" },
        stream = "stdout",
        ignore_exitcode = true,
        parser = require("lint.parser").from_errorformat("%f:%l:%c: %m", {
          source = "oxlint",
        }),
      }
    end,
  },
}
