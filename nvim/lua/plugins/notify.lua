return {
  "rcarriga/nvim-notify",
  event = "VeryLazy",
  keys = {
    {
      "<leader>un",
      function()
        require("notify").dismiss { silent = true, pending = true }
      end,
      desc = "Delete all Notifications",
    },
  },
  opts = {
    timeout = 600,
    max_height = function()
      return math.floor(vim.o.lines * 0.75)
    end,
    max_width = function()
      return math.floor(vim.o.columns * 0.75)
    end,
  },
  config = function()
    local notify = require "notify"
    notify.setup { render = "wrapped-compact" }
    vim.notify = notify.notify
  end,
}
