return {
  'MagicDuck/grug-far.nvim',
  opts = {},
  keys = {
    {
      '<leader>sar',
      function()
        require('grug-far').open { prefills = { search = vim.fn.expand '<cword>' } }
      end,
      desc = '[S]earch [A]nd [R]eplace (grug-far)',
    },
  },
}
