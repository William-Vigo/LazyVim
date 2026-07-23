local root = require("snacks").git.get_root()
return {
  {
    "nvim-neotest/neotest",
    opts = {
      adapters = {
        ["neotest-golang"] = {
          go_test_args = {
            "-v",
            "-race",
            "-count=1",
            "-coverprofile=" .. root .. "/coverage.out",
            "-covermode=atomic",
          },
        },
      },
    },
  },
}
