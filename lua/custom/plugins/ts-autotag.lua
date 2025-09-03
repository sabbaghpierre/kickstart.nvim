return {
  'windwp/nvim-ts-autotag',
  event = 'InsertEnter',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  config = function()
    require('nvim-ts-autotag').setup {
      opts = {
        -- Defaults
        enable_close = true, -- Auto close tags
        enable_rename = true, -- Auto rename pairs of tags
        enable_close_on_slash = false, -- Auto close on trailing </
      },
      -- enable_close = true, -- Auto close tags
      -- enable_rename = true, -- ✅ Auto rename pairs of tags
      -- enable_close_on_slash = false, -- Auto close on trailing </
      -- filetypes = {
      --   'html',
      --   'xml',
      --   'javascript',
      --   'typescript',
      --   'javascriptreact',
      --   'typescriptreact',
      --   'svelte',
      --   'vue',
      --   'tsx',
      --   'jsx',
      --   'rescript',
      --   'php',
      --   'markdown',
      --   'astro',
      --   'glimmer',
      --   'handlebars',
      --   'hbs',
      -- },
      -- -- per_filetype = {
      -- --   ['html'] = {
      -- --     enable_close = false, -- Example override: disable auto-close in HTML
      -- --   },
      -- -- },
    }
  end,
}
