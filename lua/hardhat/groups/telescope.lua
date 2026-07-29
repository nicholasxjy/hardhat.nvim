local M = {}

function M.get(p, _opts)
  return {
    TelescopeBorder         = { fg = p.yellow_dim, bg = p.bg },
    TelescopeNormal         = { fg = p.fg, bg = p.bg },
    TelescopePromptBorder   = { fg = p.orange, bg = p.bg },
    TelescopePromptTitle    = { fg = p.black, bg = p.orange, bold = true },
    TelescopePreviewTitle   = { fg = p.black, bg = p.yellow_dim, bold = true },
    TelescopeResultsTitle   = { fg = p.black_light, bg = p.bg_dark },
    TelescopeResultsBorder  = { fg = p.yellow_dim, bg = p.bg },
    TelescopePreviewBorder  = { fg = p.yellow_dim, bg = p.bg },
    TelescopeMatching       = { fg = p.yellow, bold = true },
    TelescopeSelection      = { fg = p.fg, bg = p.accent2 },
    TelescopeSelectionCaret = { fg = p.orange, bg = p.accent2 },
    TelescopeResultsComment = { fg = p.black_light },
    TelescopeMultiSelection = { fg = p.cyan, bg = p.accent1 },
  }
end

return M
