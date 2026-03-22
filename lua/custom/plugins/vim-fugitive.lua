return {
  -- The Git Wrapper
  {
    "tpope/vim-fugitive",
    cmd = { "G", "Git", "Gvdiffsplit" },
  },

  -- The Visual Diff Tool
  {
    "esmuellert/codediff.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        require("codediff").setup({
            -- Highlighting tweaks if needed
            char_brightness = 0.95, 
        })
    end,
    keys = {
        { "<leader>cd", "<cmd>CodeDiff<cr>", desc = "Open Visual Diff" },
    }
  },
}
