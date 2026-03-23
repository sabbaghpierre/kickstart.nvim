return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  -- Optional dependencies
  dependencies = {
    { 'nvim-tree/nvim-web-devicons', opts = {} },
    {
      'malewicz1337/oil-git.nvim',
      dependencies = { 'stevearc/oil.nvim' },
      opts = {
        show_file_highlights = true,
        show_directory_highlights = false,
        show_ignored_files = true,
      },
    },
  },
  lazy = false,
  keys = {
    -- Oil for File Explorer (Matches your Neotree FS mapping)
    {
      '<leader>fe',
      function()
        require('oil').toggle_float(vim.fn.expand '%:p:h')
      end,
      desc = '[F]ile [E]xplorer (Oil)',
    },

    -- Telescope for Buffers (The reliable way to get your Neotree Buffer look)
    {
      '<leader>fb',
      function()
        require('telescope.builtin').buffers {
          initial_mode = 'normal', -- Starts in normal mode like a list
          attach_mappings = function(prompt_bufnr, map)
            -- This lets you delete buffers from the list with 'dd' just like Oil/Neotree
            map('n', 'dd', require('telescope.actions').delete_buffer)
            return true
          end,
        }
      end,
      desc = '[F]ile [B]uffers (Telescope)',
    },
  },
  config = function()
    require('oil').setup {
      default_file_explorer = true,
      delete_to_trash = true,
      skip_confirm_for_simple_edits = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
          return name == '..' or name == '.git'
        end,
      },
      win_options = {
        wrap = true,
      },
      float = {
        -- Padding around the floating window
        padding = 2,
        -- max_width and max_height can be integers or a float between 0 and 1 (e.g. 0.4 for 40%)
        max_width = 0.5, -- Increased slightly to match Neotree's typical float size
        max_height = 0.6,
        border = 'rounded', -- Matches your popup_border_style = 'rounded'
        win_options = {
          winblend = 0,
        }, -- optionally override the oil buffers window title with custom function: fun(winid: integer): string
        get_win_title = nil,
        -- preview_split: Split direction: "auto", "left", "right", "above", "below".
        preview_split = 'auto',
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        override = function(conf)
          return conf
        end,
      },
    }
  end,
}
