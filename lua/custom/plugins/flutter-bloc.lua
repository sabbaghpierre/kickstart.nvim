return {
  'wa11breaker/flutter-bloc.nvim',
  ft = { 'dart' }, -- load when editing Dart files
  cmd = { 'FlutterRun' },
  dependencies = {
    'nvimtools/none-ls.nvim', -- Required for code actions
  },
  config = function()
    -- Setup null-ls with flutter-bloc code actions
    require('null-ls').setup {
      sources = {
        require('flutter-bloc').code_actions,
      },
    }

    -- Setup flutter-bloc with options
    require('flutter-bloc').setup {
      bloc_type = 'default', -- Choose from: 'default', 'equatable', 'freezed'
      use_sealed_classes = false,
      enable_code_actions = true,
    }
  end,
}
