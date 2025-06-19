return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
      require "lspconfig".qmlls.setup {
        cmd = {"/usr/lib/qt6/bin/qmlls", "-E"}
      }
    end,
  },

  {
    "lervag/vimtex",
    event = 'BufEnter *.tex',
    config = function ()
      vim.g.vimtex_view_method = "zathura"
    end
  },
  {
    "vuciv/golf",
  }

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --      "html", "css"
  -- 		},
  -- 	},
  -- },
}
