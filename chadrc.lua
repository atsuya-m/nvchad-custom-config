---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "chadracula",
  theme_toggle = { "chadracula", "one_light" },
  transparency = true,

  hl_override = highlights.override,
  hl_add = highlights.add,
  statusline = {
    theme = "minimal", -- default/vscode/vscode_colored/minimal

    -- default/round/block/arrow (separators work only for "default" statusline theme;
    -- round and block will work for the minimal theme only)
    separator_style = "default",
  },
  tabufline = {
    enabled = false,
  },

  nvdash = {
    load_on_startup = true,
    buttons = {
      { "󰷏  Show Directory", "Spc f d", "NvimTreeToggle" },
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "  Recent Files", "Spc f o", "Telescope oldfiles" },
      { "󰌌  Mappings", "Spc c h", "NvCheatsheet" },
      { "  Update Plugins", "", "Lazy update" },
      { "  Configure NVIM", "", ":e $MYVIMRC | :cd %:p:h" },
    },
  },
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
