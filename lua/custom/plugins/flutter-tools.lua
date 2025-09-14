return {
  'nvim-flutter/flutter-tools.nvim',
  ft = { 'dart' }, -- load when editing Dart files
  cmd = { 'FlutterRun' },
  dependencies = {
    'nvim-lua/plenary.nvim',
    'stevearc/dressing.nvim', -- optional for vim.ui.select
  },
  -- config = true,
}
