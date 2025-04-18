return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "antoinemadec/FixCursorHold.nvim",
      "nvim-treesitter/nvim-treesitter",
      {
        "fredrikaverpil/neotest-golang",
        dependencies = {
          "leoluz/nvim-dap-go",
        },
      }, -- Installation
    },
    config = function()
      local neotest_golang_opts = {
        runner = "gotestsum",
      } -- Specify custom configuration
      require("neotest").setup({
        adapters = {
          require("neotest-golang")(neotest_golang_opts), -- Registration
          vim.keymap.set("n", "<leader>tt", function()
            require("neotest").run.run()
          end, { desc = "Run nearest test" }),
          vim.keymap.set("n", "<leader>to", function()
            require("neotest").output.open({ enter = true, auto_close = true })
          end, { desc = "Open test output" }),
          vim.keymap.set("n", "<leader>ts", function()
            require("neotest").summary.toggle()
          end, { desc = "Toggle test summary" }),
          vim.keymap.set("n", "<leader>tf", function()
            require("neotest").run.run(vim.fn.expand("%"))
          end, { desc = "Run test file" }),
          vim.keymap.set("n", "<leader>tx", function()
            require("neotest").run.stop()
          end, { desc = "Stop nearest test" }),
        },
        --log_level = vim.log.levels.TRACE,
      })
    end,
  },
}
