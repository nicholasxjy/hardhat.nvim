local M = {}

function M.get(p, _opts)
  return {
    TroubleNormal       = { fg = p.fg, bg = p.bg_dark },
    TroubleNormalNC     = { fg = p.fg, bg = p.bg_dark },
    TroubleText         = { fg = p.white_dim },
    TroubleCount        = { fg = p.orange, bg = p.accent2 },
    TroubleIconError    = { fg = p.red },
    TroubleIconWarn     = { fg = p.yellow },
    TroubleIconInfo     = { fg = p.blue },
    TroubleIconHint     = { fg = p.cyan },
    TroubleIndent       = { fg = p.black_light },
    TroublePos          = { fg = p.black_light },
    TroubleCode         = { fg = p.black_light },
    TroubleSource       = { fg = p.black_light },
    TroubleFilename     = { fg = p.yellow_dim, bold = true },
  }
end

return M
