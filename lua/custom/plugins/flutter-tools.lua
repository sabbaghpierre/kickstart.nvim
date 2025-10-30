return {
  'nvim-flutter/flutter-tools.nvim',
  ft = { 'dart' }, -- load when editing Dart files
  cmd = { 'FlutterRun', 'FlutterQuit', 'FlutterDevices', 'FlutterEmulators', 'FlutterReload', 'FlutterRestart', 'FlutterLogToggle' },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  keys = {
    { '<leader>Fr', '<cmd>FlutterRun<CR>', desc = '[F]lutter [R]un' },
    { '<leader>Fq', '<cmd>FlutterQuit<CR>', desc = '[F]lutter [Q]uit' },
    { '<leader>Fd', '<cmd>FlutterDevices<CR>', desc = '[F]lutter [D]evices' },
    { '<leader>Fe', '<cmd>FlutterEmulators<CR>', desc = '[F]lutter [E]mulators' },
    { '<leader>Fl', '<cmd>FlutterReload<CR>', desc = '[F]lutter Re[l]oad' },
    { '<leader>FR', '<cmd>FlutterRestart<CR>', desc = '[F]lutter [R]estart (hot)' },
    { '<leader>Ft', '<cmd>FlutterLogToggle<CR>', desc = '[F]lutter Log [T]oggle' },
  },
  config = function()
    require('flutter-tools').setup {
      dev_log = {
        open_cmd = 'botright 15split',
      },
      lsp = {
        settings = {
          dart = {
            lineLength = 125,
          },
        },
      },
    }
  end,
}
