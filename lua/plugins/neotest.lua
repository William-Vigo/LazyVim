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
            "-coverprofile=coverage.out",
            "-covermode=atomic",
          },
        },
      },
    },
  },
}
