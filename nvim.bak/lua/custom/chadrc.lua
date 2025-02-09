---@type ChadrcConfig
local M = {}

M.ui = {
  theme = 'tomorrow_night',

  hl_override = {
    NvDashAscii = {
      fg = 'blue',
      bg = 'none',
    },
    NvDashButtons = {
      fg = 'white',
      bg = 'none',
    },
  },
}

M.plugins = "custom.plugins"

return M
