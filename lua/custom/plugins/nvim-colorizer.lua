return {
  'catgoose/nvim-colorizer.lua',
  event = 'BufReadPre',
  opts = {
    user_default_options = {
      AARRGGBB = true, -- Enable 0xAARRGGBB format (in addition to defaults)
    },
  },
}
