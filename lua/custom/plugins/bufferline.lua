return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        -- ... your other configuration options (if any) ...
      },
    }

    -- Navigation: Use BufferLine's own commands for smooth cycling
    vim.keymap.set('n', '<Leader>bn', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next Buffer' })
    vim.keymap.set('n', '<Leader>bp', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous Buffer' })

    -- MAGIC: Interactive buffer picker - highly recommended!
    vim.keymap.set('n', '<Leader>bb', '<cmd>BufferLinePick<CR>', { desc = 'Pick Buffer' })
    -- Close current buffer
    vim.keymap.set('n', '<Leader>bd', '<cmd>bdelete<CR>', { desc = 'Delete Buffer' })
  end,
}
