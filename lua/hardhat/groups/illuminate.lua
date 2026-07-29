local M = {}

function M.get(p, _opts)
  return {
    IlluminatedWordText  = { bg = p.accent2 },
    IlluminatedWordRead  = { bg = p.accent2 },
    IlluminatedWordWrite = { bg = p.accent2 },
    illuminatedWord      = { bg = p.accent2 },
    illuminatedCurWord   = { bg = p.accent2 },
  }
end

return M
