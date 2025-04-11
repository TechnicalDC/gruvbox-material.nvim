local M = {}

---return a lualine compatible theme
---@param contrast Contrast
---@return table
function M.theme(contrast)
  local g_colors = require("gruvbox-material.colors")
  local colors = g_colors.get(vim.o.background, contrast)
  return {
    normal = {
      a = { fg = colors.bg_statusline1, bg = colors.green , bold = true},
      b = { fg = colors.fg0, bg = colors.bg_statusline1 },
      c = { fg = "NONE", bg = colors.bg_statusline1},
    },
    insert = {
      a = { fg = colors.bg_statusline1, bg = colors.blue , bold = true},
      b = { fg = colors.fg0, bg = colors.bg_statusline1 },
      c = { fg = "NONE", bg = colors.bg_statusline1},
    },
    visual = {
      a = { fg = colors.bg_statusline1, bg = colors.yellow , bold = true},
      b = { fg = colors.fg0, bg = colors.bg_statusline1 },
      c = { fg = "NONE", bg = colors.bg_statusline1},
    },
    replace = {
      a = { fg = colors.bg_statusline1, bg = colors.red , bold = true},
      b = { fg = colors.fg0, bg = colors.bg_statusline1 },
      c = { fg = "NONE", bg = colors.bg_statusline1},
    },
    command = {
      a = { fg = colors.bg_statusline1, bg = colors.aqua , bold = true},
      b = { fg = colors.fg0, bg = colors.bg_statusline1 },
      c = { fg = "NONE", bg = colors.bg_statusline1},
    },
    inactive = {
      a = { fg = colors.fg0, bg = "NONE" },
      b = { fg = colors.fg0, bg = "NONE" },
      c = { fg = colors.fg0, bg = "NONE" },
    },
  }
end

return M
