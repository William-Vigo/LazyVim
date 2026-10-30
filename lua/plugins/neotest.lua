return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-golang"] = {
          go_test_args = function()
            local root = require("snacks").git.get_root()
            return {
              "-v",
              "-race",
              "-count=1",
              "-coverprofile=" .. root .. "/coverage.out",
              "-covermode=atomic",
            }
          end,
        },
      },
    },
  },
}
