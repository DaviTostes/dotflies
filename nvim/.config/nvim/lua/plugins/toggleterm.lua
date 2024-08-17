return {
	"akinsho/toggleterm.nvim",
	config = function()
		local toggleterm = require("toggleterm")
		local Terminal = require("toggleterm.terminal").Terminal

		toggleterm.setup({
			float_opts = {
				title_pos = "left",
			},
		})

		-- Key mappings
		vim.keymap.set("n", "TT", ":ToggleTerm direction=float<CR>", {})
		vim.keymap.set("t", "<esc>", [[<C-\><C-n>]], {})
		vim.keymap.set("t", "<C-q>", [[<C-\><C-n>:ToggleTerm<CR>]], {})
		vim.keymap.set("n", "TS", ":TermSelect<CR>", {})

		-- Function to open a modal and create a new terminal with the given name
		vim.keymap.set("n", "<C-t>", function()
			vim.ui.input({ prompt = "Enter terminal name: " }, function(input)
				if input ~= "" then
					Terminal:new({
						display_name = input,
						cmd = "/bin/bash",
						direction = "float",
					}):toggle()
				else
					print("No terminal name provided")
				end
			end)
		end, { noremap = true, silent = true })
	end,
}
