local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    py = { "black" },
    python = { "black" },
    golang = { "gofumpt" },
    yaml = { "yamlfmt" },
    css = { "prettier" },
    html = { "prettier" },
    javascript = { "prettier" },
    typescript = { "prettier" },
    vue = { "prettier" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
