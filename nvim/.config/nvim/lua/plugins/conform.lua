return {
  'stevearc/conform.nvim',
  opts = {},
  config = function()
    require("conform").setup({
      lua = { 'stylua' },
      javascript = { "prettier" },
      csharp = { "csharpier" },
      go = { "golines" },
      php = { "php_cs_fixer", "pretty_php", "phpcbf" },
    })
    vim.keymap.set("n", "F", vim.lsp.buf.format, {})
  end
}
