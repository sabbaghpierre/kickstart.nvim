vim.o.sessionoptions = 'blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions'

return {
  'rmagatti/auto-session',
  lazy = false,
  opts = {
    suppressed_dirs = { '~/', '~/Downloads', '/' },
    pre_save_cmds = {
      function()
        -- Close oil buffers before saving session to avoid restoring broken oil:// URIs
        for _, buf in ipairs(vim.api.nvim_list_bufs()) do
          if vim.bo[buf].filetype == 'oil' then
            vim.api.nvim_buf_delete(buf, { force = true })
          end
        end
      end,
    },
  },
}
