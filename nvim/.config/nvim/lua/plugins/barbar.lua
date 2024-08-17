return {
	"romgrk/barbar.nvim",
	dependencies = {
		"lewis6991/gitsigns.nvim",
  },
	init = function()
    vim.g.barbar_auto_setup = false
	end,
	opts = {},
	version = "^1.0.0",

  vim.keymap.set('n', '-', ':BufferPrevious<CR>'),
  vim.keymap.set('n', '=', ':BufferNext<CR>'),
  vim.keymap.set('n', '<leader><esc>', ':BufferClose<CR>')
}
