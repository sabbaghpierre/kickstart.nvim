vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,localoptions'

-- Automatically handle swap file conflicts during session restore (E325)
vim.api.nvim_create_autocmd('SwapExists', {
  callback = function()
    vim.v.swapchoice = 'e' -- open read-only, ignore swap
  end,
})

return {
  'rmagatti/auto-session',
  lazy = false,
  opts = {
    suppressed_dirs = { '~/', '~/Downloads', '/' },
    pre_save_cmds = {
      function()
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          local ft = vim.bo[buf].filetype
          local bt = vim.bo[buf].buftype
          -- Close oil and terminal buffers before saving session
          if ft == 'oil' or bt == 'terminal' then
            vim.api.nvim_buf_delete(buf, { force = true })
          end
        end
      end,
    },
  },
}
