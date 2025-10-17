return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {},
    config = function()
      require('barbar').setup()

      -- Keymaps for barbar
      local map = vim.api.nvim_set_keymap
      local opts = { noremap = true, silent = true }

      -- Move to previous/next
      map('n', '<C-,>', '<Cmd>BufferPrevious<CR>', opts)
      map('n', '<C-.>', '<Cmd>BufferNext<CR>', opts)
      map('n', '<leader>b,', '<Cmd>BufferPrevious<CR>', { desc = '[B]uffer Previous', noremap = true, silent = true })
      map('n', '<leader>b.', '<Cmd>BufferNext<CR>', { desc = '[B]uffer Next', noremap = true, silent = true })

      -- Close buffer
      map('n', '<C-d>', '<Cmd>BufferClose<CR>', opts)

      -- Magic buffer-picking mode
      map('n', '<C-p>', '<Cmd>BufferPick<CR>', opts)
      map('n', '<leader>bp', '<Cmd>BufferPick<CR>', { desc = '[B]uffer [P]ick', noremap = true, silent = true })
      map('n', '<C-c>', '<Cmd>BufferPickDelete<CR>', opts)
      map('n', '<leader>bc', '<Cmd>BufferPickDelete<CR>', { desc = '[B]uffer [P]ick Delete', noremap = true, silent = true })

      -- Sort automatically by..
    end,
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  },
}
