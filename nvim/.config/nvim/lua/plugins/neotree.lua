return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      enable_git_status = true,
      enable_diagnostics = true,

      window = {
        position = "right",
        width = 32
      },

      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = false,
        },
      }
    })
    vim.keymap.set({ 'n', 'v' }, '<leader>n', ':Neotree<CR>', {})
    vim.keymap.set({ 'n', 'v' }, '<leader>nc', ':Neotree close<CR>', {})
  end
}
