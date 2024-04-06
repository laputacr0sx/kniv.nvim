return {
  { -- NvimTree Custom Configuration
    'nvim-tree/nvim-tree.lua',
    version = '*',
    lazy = false,
    dependencies = {
      'nvim-tree/nvim-web-devicons',
    },
    config = function()
      local nvimtree = require 'nvim-tree'
      require('nvim-tree').setup {
        sort = {
          sorter = 'case_sensitive',
        },
        view = {
          width = 30,
        },
        renderer = {
          group_empty = true,
        },
        filters = {
          dotfiles = false,
        },
      }

      vim.keymap.set('n', '<leader>t', '<cmd>:NvimTreeToggle<CR>', { desc = '[T]oggle NvimTree' })
    end,
  },
}
