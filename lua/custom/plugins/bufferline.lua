return {
  'akinsho/bufferline.nvim',
  version = '*',
  event = 'VeryLazy',
  dependencies = 'nvim-tree/nvim-web-devicons',
  opts = {
    options = {
      sort_by = function(buffer_a, buffer_b)
        -- Use the filename (or path) for comparison
        -- .name is usually the display name, .path is the full path
        return buffer_a.name < buffer_b.name
      end,
      show_buffer_close_icons = false,
    },
  },
  keys = {
    { '<Leader>bn', '<cmd>BufferLineCycleNext<CR>', desc = 'Next Buffer' },
    { '<Leader>bp', '<cmd>BufferLineCyclePrev<CR>', desc = 'Previous Buffer' },
    { '<Leader>bb', '<cmd>BufferLinePick<CR>', desc = 'Pick Buffer' },
    {
      '<Leader>bd',
      function()
        local current = vim.api.nvim_get_current_buf()
        local next_buf = nil
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if buf ~= current and vim.api.nvim_buf_is_valid(buf) and vim.bo[buf].buflisted and vim.bo[buf].buftype ~= 'terminal' then
            next_buf = buf
            break
          end
        end
        if next_buf then
          vim.api.nvim_set_current_buf(next_buf)
        end
        vim.cmd('bdelete ' .. current)
      end,
      desc = 'Delete Buffer',
    },
    { '<Leader>bo', '<cmd>BufferLineCloseOthers<CR>', desc = 'Close Other Buffers' },
  },
}
