local M = {}

function M.get(p, _opts)
  return {
    -- indent-blankline v2
    IndentBlanklineChar         = { fg = p.accent2, nocombine = true },
    IndentBlanklineContextChar  = { fg = p.yellow_dim, nocombine = true },
    IndentBlanklineSpaceChar    = { fg = p.accent2, nocombine = true },
    -- indent-blankline v3 (ibl)
    IblIndent                   = { fg = p.accent2, nocombine = true },
    IblScope                    = { fg = p.yellow_dim, nocombine = true },
    IblWhitespace               = { fg = p.accent2, nocombine = true },
  }
end

return M
