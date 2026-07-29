local M = {}

function M.get(p, _opts)
  return {
    NotifyBackground   = { fg = p.fg, bg = p.bg },

    NotifyERRORBorder  = { fg = p.red_dim, bg = p.bg },
    NotifyERRORIcon    = { fg = p.red },
    NotifyERRORTitle   = { fg = p.red },
    NotifyERRORBody    = { fg = p.fg, bg = p.bg },

    NotifyWARNBorder   = { fg = p.yellow_dim, bg = p.bg },
    NotifyWARNIcon     = { fg = p.yellow },
    NotifyWARNTitle    = { fg = p.yellow },
    NotifyWARNBody     = { fg = p.fg, bg = p.bg },

    NotifyINFOBorder   = { fg = p.blue_dim, bg = p.bg },
    NotifyINFOIcon     = { fg = p.blue },
    NotifyINFOTitle    = { fg = p.blue },
    NotifyINFOBody     = { fg = p.fg, bg = p.bg },

    NotifyDEBUGBorder  = { fg = p.black_light, bg = p.bg },
    NotifyDEBUGIcon    = { fg = p.black_light },
    NotifyDEBUGTitle   = { fg = p.black_light },
    NotifyDEBUGBody    = { fg = p.fg, bg = p.bg },

    NotifyTRACEBorder  = { fg = p.purple_dim, bg = p.bg },
    NotifyTRACEIcon    = { fg = p.purple },
    NotifyTRACETitle   = { fg = p.purple },
    NotifyTRACEBody    = { fg = p.fg, bg = p.bg },
  }
end

return M
