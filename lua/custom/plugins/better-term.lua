return {
  'CRAG666/betterTerm.nvim',
  keys = {
    {
      mode = { 'n', 't' },
      '<C-;>',
      function()
        require('betterTerm').open()
      end,
      desc = 'Open BetterTerm',
    },
  },
  opts = {
    position = 'bot',
    size = 20,
  },
}
