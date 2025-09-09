-- return {
--   {
--     'nvim-neo-tree/neo-tree.nvim',
--     branch = 'v3.x',
--     dependencies = {
--       'nvim-lua/plenary.nvim',
--       'MunifTanjim/nui.nvim',
--       'nvim-tree/nvim-web-devicons', -- optional, but recommended
--     },
--     lazy = false, -- neo-tree will lazily load itself
--   },
-- }
return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      popup_border_style = 'rounded',
      enable_git_status = true,
      enable_diagnostics = true,

      -- Floating window configuration
      default_component_configs = {
        container = {
          enable_character_fade = true,
        },

        git_status = {
          symbols = {
            -- Exact VS Code icons
            added = 'A', -- VS Code: 'A' for Added (green)
            modified = 'M', -- VS Code: 'M' for Modified (blue)
            deleted = 'D', -- VS Code: 'D' for Deleted (red)
            renamed = 'R', -- VS Code: 'R' for Renamed (yellow)
            untracked = 'U', -- VS Code: 'U' for Untracked (cyan)
            ignored = 'I', -- VS Code: 'I' for Ignored (gray)
            unstaged = 'M', -- VS Code uses same for unstaged mods
            staged = 'S', -- VS Code doesn't have staged, so we use 'S'
            conflict = 'C', -- VS Code: 'C' for Conflict (red)
          }, -- Optional: align the symbols for cleaner look
          align = 'right',
        },
      },

      window = {
        position = 'float',
        mappings = {
          ['<space>'] = 'none', -- disable space key if you use it as leader
        },
      },

      filesystem = {
        window = {
          mappings = {
            ['<C-s>'] = 'open_split',
            ['<C-v>'] = 'open_vsplit',
          },
        },
        filtered_items = {
          visible = true,
          hide_dotfiles = false,
        },
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
      },
    }
  end,
}
