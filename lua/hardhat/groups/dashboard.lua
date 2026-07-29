local M = {}

function M.get(p, _opts)
  return {
    DashboardHeader           = { fg = p.orange },
    DashboardFooter           = { fg = p.black_light, italic = true },
    -- Hyper theme
    DashboardProjectTitle     = { fg = p.cyan },
    DashboardProjectTitleIcon = { fg = p.orange },
    DashboardProjectIcon      = { fg = p.yellow },
    DashboardMruTitle         = { fg = p.cyan },
    DashboardMruIcon          = { fg = p.purple },
    DashboardFiles            = { fg = p.white_dim },
    DashboardShortCutIcon     = { fg = p.green },
    -- Doom theme
    DashboardDesc             = { fg = p.white_dim },
    DashboardKey              = { fg = p.orange },
    DashboardIcon             = { fg = p.yellow },
    DashboardShortCut         = { fg = p.green },
  }
end

return M
