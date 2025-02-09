local plugins = {
  {
    "lervag/vimtex",
    lazy = true,
    event = "Bufenter *.tex",
    config = function ()
      vim.g.vimtex_view_method = "skim"
    end
  },
  {
     "williamboman/mason.nvim",
     opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "clangd",
        "texlab",
      },
    },
  },
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  -- {
  --   'goolord/alpha-nvim',
  --   dependencies = {
  --       'nvim-tree/nvim-web-devicons',
  --       'nvim-lua/plenary.nvim'
  --   },
  --   config = function ()
  --       require('alpha').setup(require'alpha.themes.dashboard'.config)
  --   end
  -- },
}

return plugins
