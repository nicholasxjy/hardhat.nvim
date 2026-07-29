local M = {}

function M.get(p, _opts)
  return {
    GitSignsAdd          = { fg = p.green_dim },
    GitSignsChange       = { fg = p.yellow_dim },
    GitSignsDelete       = { fg = p.red_dim },
    GitSignsAddNr        = { fg = p.green_dim },
    GitSignsChangeNr     = { fg = p.yellow_dim },
    GitSignsDeleteNr     = { fg = p.red_dim },
    GitSignsAddLn        = { bg = p.accent1 },
    GitSignsChangeLn     = { bg = p.accent1 },
    GitSignsDeleteLn     = { bg = p.accent1 },
    GitSignsUntracked    = { fg = p.blue_dim },
    GitSignsCurrentLineBlame = { fg = p.black_light, italic = true },
  }
end

return M
