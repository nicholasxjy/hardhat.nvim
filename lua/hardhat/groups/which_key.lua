local M = {}

function M.get(p, _opts)
  return {
    WhichKey          = { fg = p.cyan },
    WhichKeyBorder    = { fg = p.yellow_dim, bg = p.bg_dark },
    WhichKeyDesc      = { fg = p.orange },
    WhichKeyFloat     = { bg = p.bg_dark },
    WhichKeyGroup     = { fg = p.blue },
    WhichKeyIcon      = { fg = p.yellow },
    WhichKeyIconAzure = { fg = p.blue },
    WhichKeyIconBlue  = { fg = p.blue },
    WhichKeyIconCyan  = { fg = p.cyan },
    WhichKeyIconGreen = { fg = p.green },
    WhichKeyIconGrey  = { fg = p.white_dim },
    WhichKeyIconOrange= { fg = p.orange },
    WhichKeyIconPurple= { fg = p.purple },
    WhichKeyIconRed   = { fg = p.red },
    WhichKeyIconYellow= { fg = p.yellow },
    WhichKeyNormal    = { fg = p.fg, bg = p.bg_dark },
    WhichKeySeparator = { fg = p.black_light },
    WhichKeyTitle     = { fg = p.yellow, bg = p.bg_dark, bold = true },
    WhichKeyValue     = { fg = p.white_dim },
  }
end

return M
